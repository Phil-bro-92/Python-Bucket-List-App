from flask import render_template, request, redirect, Blueprint
import repositories.city_repository as city_repository
import repositories.country_repository as country_repository
from models.city import City
import pdb


cities_blueprint = Blueprint("cities", __name__)


@cities_blueprint.route("/cities/<id>")
def cities(id):
    country = country_repository.select(id)
    cities = country_repository.cities(country)
    return render_template("cities/index.html", cities=cities, country=country)


@cities_blueprint.route("/cities/<id>/new")
def new_city(id):
    country = country_repository.select(id)
    return render_template("cities/new.html", country=country)


@cities_blueprint.route("/cities/<id>", methods=["POST"])
def create_city(id):
    country = country_repository.select(id)
    # pdb.set_trace()
    name = request.form["city"]
    city = City(name, country)
    city_repository.save(city)
    return redirect("/cities/" + id)
