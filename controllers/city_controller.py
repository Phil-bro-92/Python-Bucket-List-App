from flask import render_template, request, redirect, Blueprint
import repositories.city_repository as city_repository
from models.city import City

cities_blueprint = Blueprint("cities", __name__)

@cities_blueprint.route("/cities")
def countries():
    cities = city_repository.select_all()
    return render_template("cities/index.html", cities = cities )
