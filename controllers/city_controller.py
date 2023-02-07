from flask import render_template, request, redirect, Blueprint
import repositories.city_repository as city_repository
import repositories.country_repository as country_repository
from models.city import City
from models.country import Country


cities_blueprint = Blueprint("cities", __name__)


@cities_blueprint.route("/cities/<id>")
def cities(id):
    country = country_repository.select(id)
    cities = country_repository.cities(country)
    return render_template("cities/index.html", cities=cities, country=country)

@cities_blueprint.route("/cities/<id>/filter_by_city_down")
def filter_by_city_down(id):
    country = country_repository.select(id)
    cities = country_repository.filter_cities_by_name_down(country)
    return render_template("cities/index.html", cities=cities, country=country)

@cities_blueprint.route("/cities/<id>/new")
def new_city(id):
    country = country_repository.select(id)
    return render_template("cities/new.html", country=country)


@cities_blueprint.route("/cities/<id>", methods=["POST"])
def create_city(id):
    country = country_repository.select(id)
    name = request.form["city"].title()
    city = City(name, country)
    city_repository.save(city)
    return redirect("/cities/" + id)


@cities_blueprint.route("/cities/<country_id>/<city_id>/edit")
def edit_city(country_id, city_id):
    city = city_repository.select(city_id)
    country = country_repository.select(country_id)
    return render_template("cities/edit.html", city=city, country=country)


@cities_blueprint.route("/cities/<country_id>/<city_id>/delete", methods=["POST"])
def delete(country_id, city_id):
    city_repository.delete(city_id)
    return redirect("/cities/" + country_id)


@cities_blueprint.route("/cities/<country_id>/<city_id>/update", methods=["POST"])
def update(country_id, city_id):
    name = request.form["update_city"].title()
    country = country_repository.select(country_id)
    city = City(name, country, city_id)
    city_repository.update(city)
    return redirect("/cities/" + country_id)
