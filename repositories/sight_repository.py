from db.run_sql import run_sql

from models.sight import Sight
import repositories.city_repository as city_repository


def save(sight):
    sql = "INSERT INTO sights (name, city_id) VALUES (%s, %s) RETURNING *"
    values = [sight.name, sight.city.id]
    results = run_sql(sql, values)
    sight.id = results[0]["id"]
    return sight


def select_all():
    sights = []

    sql = "SELECT * FROM sights"
    results = run_sql(sql)

    for result in results:
        city = city_repository.select(result['city_id'])
        sight = Sight(result["name"], city , result["id"])
        sights.append(sight)
    return sights

def select(id):
    sight = None
    sql = "SELECT * FROM sights WHERE id = %s"
    values = [id]
    result = run_sql(sql, values)[0]

    if result:
        city = city_repository.select(result['city_id'])
        sight = Sight(result['name'], city, result['id'])
    return sight

def delete_all():
    sql = "DELETE FROM sights"
    run_sql(sql)

def delete(id):
    sql = "DELETE FROM sights WHERE id = %s"
    values = [id]
    run_sql(sql, values)

def update(sight):
    sql = "UPDATE sights SET (name, city_id) = (%s, %s) WHERE id = %s"
    values = [sight.name, sight.city.id, sight.id]
    run_sql(sql, values)


