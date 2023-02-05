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
    # pdb.set_trace()
    return render_template("cities/index.html", cities=cities, country=country)
