from db.run_sql import run_sql

from models.user import User
from models.city import City


def save(user):
    sql = "INSERT INTO users (first_name, last_name) VALUES (%s, %s) returning id"
    values = [user.first_name, user.last_name]
    results = run_sql(sql, values)
    user.id = results[0]["id"]
    return user


def select_all():
    users = []

    sql = "SELECT * FROM users ORDER BY last_name"
    results = run_sql(sql)

    for result in results:
        user = User(result["first_name"], result["last_name"], result["id"])
        users.append(user)
    return users


def select(id):
    user = None
    sql = "SELECT * FROM users WHERE id = %s"
    values = [id]
    result = run_sql(sql, values)[0]

    if result:
        user = User(result["first_name"], result["last_name"], result["id"])
    return user


def delete_all():
    sql = "DELETE FROM users"
    run_sql(sql)


def delete(id):
    sql = "DELETE FROM users WHERE id = %s"
    values = [id]
    run_sql(sql, values)


def update(user):
    sql = "UPDATE users SET (first_name, last_name) = (%s, %s) WHERE id = %s"
    values = [user.first_name, user.last_name, user.id]
    run_sql(sql, values)


def cities(user):
    cities = []

    sql = "SELECT cities.* FROM cities INNER JOIN visits ON visits.city_id = cities.id WHERE user_id = %s"
    values = [user.id]
    results = run_sql(values, sql)

    for result in results:
        city = City(result['name'], result['country'], result['id'])
        cities.append(city)
    return cities
