from db.run_sql import run_sql
import pdb
from models.visit import Visit
import repositories.user_repository as user_repository
import repositories.city_repository as city_repository


def save(visit):
    sql = "INSERT INTO visits (user_id, city_id, visited, on_list) VALUES (%s, %s, %s, %s) RETURNING *"
    values = [visit.user.id, visit.city.id, visit.visited, visit.on_list]
    results = run_sql(sql, values)
    visit.id = results[0]["id"]
    return visit


def select_all():
    visits = []

    sql = "SELECT * FROM visits"
    results = run_sql(sql)
    for result in results:
        user = user_repository.select(result["user_id"])
        city = city_repository.select(result["city_id"])
        visit = Visit(user, city, result["visited"], result["on_list"], result["id"])
        visits.append(visit)
    return visits


def select(id):
    visit = None
    sql = "SELECT * FROM visits WHERE id = %s"
    values = [id]
    result = run_sql(sql, values)[0]

    if result:
        user = user_repository.select(result["user_id"])
        city = city_repository.select(result["city_id"])
        visit = Visit(user, city, result["visited"], result["on_list"], result["id"])
    return visit


def delete_all():
    sql = "DELETE FROM visits"
    run_sql(sql)


def delete(id):
    sql = "DELETE FROM visits WHERE id = %s"
    values = [id]
    run_sql(sql, values)


def update(visit):
    sql = "UPDATE visits SET (user_id, city_id, visited, on_list) = (%s, %s, %s, %s) WHERE id = %s"
    values = [visit.user.id, visit.city.id, visit.visited, visit.on_list, visit.id]
    run_sql(sql, values)


def visits(user):
    visits = []
    sql = "SELECT v.id visit_id, u.id user_id, u.first_name, u.last_name, v.visited, v.on_list, c.id city_id, c.name city_name FROM visits AS v INNER JOIN users AS u ON u.id = v.user_id INNER JOIN cities AS c ON c.id = v.city_id WHERE u.id = %s"
    values = [user.id]
    results = run_sql(sql, values)

    for result in results:
        visits.append(result)
    return visits