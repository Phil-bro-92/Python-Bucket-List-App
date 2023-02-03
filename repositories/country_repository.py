from db.run_sql import run_sql

from models.country import Country


def save(country):
    sql = "INSERT INTO countries (name, continent, population) VALUES (%s, %s, %s) RETURNING *"
    values = [country.name, country.continent, country.population]
    results = run_sql(sql, values)
    country.id = results[0]["id"]
    return country


def select_all():
    countries = []
    sql = "SELECT * FROM countries"
    results = run_sql(sql)

    for result in results:
        country = Country(
            result["name"], result["continent"], result["population"], result["id"]
        )
        countries.append(country)
    return countries


def select(id):
    country = None
    sql = "SELECT * FROM countries WHERE id = %s"
    values = [id]
    result = run_sql(sql, values)[0]

    if result:
        country = Country(
            result["name"], result["continent"], result["population"], result["id"]
        )
    return country


def delete_all():
    sql = "DELETE FROM countries"
    run_sql(sql)


def delete(id):
    sql = "DELETE FROM countries WHERE id = %s"
    values = [id]
    run_sql(sql, values)


def update(country):
    sql = "UPDATE countries SET (name, continent, population) = (%s, %s, %s) WHERE id = %s"
    values = [country.name, country.continent, country.population, country.id]
    run_sql(sql, values)

