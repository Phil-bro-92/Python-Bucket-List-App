from flask import render_template, request, redirect, Blueprint
import repositories.visit_repository as visit_repository
import repositories.city_repository as city_repository
import repositories.country_repository as country_repository
import repositories.user_repository as user_repository
from models.visit import Visit

visits_blueprint = Blueprint("visits", __name__)


@visits_blueprint.route("/visits")
def visits():
    users = user_repository.select_all()
    countries = country_repository.select_all()
    cities = city_repository.select_all()
    return render_template(
        "visits/index.html", users=users, countries=countries, cities=cities
    )
