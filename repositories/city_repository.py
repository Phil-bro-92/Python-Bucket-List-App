from db.run_sql import run_sql
import pdb
from models.city import City
import repositories.country_repository as country_repository

## PDA PSEUDOCODE FOR SAVE A CITY TO DATABASE

# Define save city function:
#   Create sql variable and assign sgl string inserting name and country_id in cities and returning all.
#   Create values variable and assign id of city argument.
#   Creating results variable and assign run_sql with sql and values as arguments
#   Create city id variable and assign to first index of results' id
#   Return city


def save(city):
    sql = "INSERT INTO cities (name, country_id) VALUES (%s, %s) RETURNING *"
    values = [city.name, city.country.id]
    results = run_sql(sql, values)
    city.id = results[0]["id"]
    return city


def select_all():
    cities = []
    sql = "SELECT * FROM cities ORDER BY name"
    results = run_sql(sql)

    for result in results:
        country = country_repository.select(result["country_id"])
        city = City(result["name"], country, result["id"])
        cities.append(city)
    return cities

def filter_city_name_down():
    cities = []
    sql = "SELECT * FROM cities ORDER BY name DESC"
    results = run_sql(sql)

    for result in results:
        country = country_repository.select(result["country_id"])
        city = City(result["name"], country, result["id"])
        cities.append(city)
    return cities


def select(id):
    city = None
    sql = "SELECT * FROM cities WHERE id = %s"
    values = [id]
    result = run_sql(sql, values)[0]
    if result:

        country = country_repository.select(result["country_id"])

        city = City(result["name"], country, result["id"])
    return city


def delete_all():
    sql = "DELETE FROM cities"
    run_sql(sql)


def delete(id):
    sql = "DELETE FROM cities WHERE id = %s"
    values = [id]
    run_sql(sql, values)


def update(city):
    sql = "UPDATE cities SET (name, country_id) = (%s, %s) WHERE id = %s"
    values = [city.name, city.country.id, city.id]
    run_sql(sql, values)


def sights(city):
    sights = []
    sql = "SELECT sights.name, sights.id FROM sights INNER JOIN cities ON cities.id = sights.city_id WHERE cities.id = %s"
    values = [city.id]
    results = run_sql(sql, values)

    for result in results:
        sights.append(result)
    return sights
