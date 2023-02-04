from flask import render_template, request, redirect, Blueprint
import repositories.country_repository as country_repository
from models.country import Country

countries_blueprint = Blueprint("countries", __name__)


@countries_blueprint.route("/countries")
def countries():
    countries = country_repository.select_all()
    return render_template("countries/index.html", countries=countries)


@countries_blueprint.route("/countries/<id>/delete", methods=["POST"])
def delete(id):
    country_repository.delete(id)
    return redirect("/countries")


@countries_blueprint.route("/countries/new")
def new_country():
    return render_template("countries/new.html")


@countries_blueprint.route("/countries", methods=["POST"])
def create_country():
    country = request.form["country"]
    continent = request.form["continent"]
    population = request.form["population"]
    country = Country(country, continent, population)
    country_repository.save(country)
    return redirect("/countries")


@countries_blueprint.route("/countries/<id>/edit", methods=["POST"])
def edit_country(id):
    country = country_repository.select(id)
    return render_template("countries/edit.html", country=country)


@countries_blueprint.route("/countries/<id>/update", methods=["POST"])
def update_country(id):
    country = request.form["update_country"]
    continent = request.form["update_continent"]
    population = request.form["update_population"]
    updated_country = Country(country, continent, population)
    updated_country.id = id
    country_repository.update(updated_country)
    return redirect("/countries")
