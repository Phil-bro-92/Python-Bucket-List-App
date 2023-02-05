from db.run_sql import run_sql
import pdb
from models.city import City
import repositories.country_repository as country_repository


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
        country = country_repository.select(result['country_id'])
        city = City(result["name"], country, result["id"])
        cities.append(city)
    return cities


def select(id):
    city = None
    sql = "SELECT * FROM cities WHERE id = %s"
    values = [id]
    result = run_sql(sql, values)[0]
    # pdb.set_trace()
    if result:
       
        country = country_repository.select(result['country_id'])
        
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
    