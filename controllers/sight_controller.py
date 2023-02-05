from flask import render_template, request, redirect, Blueprint
import repositories.sight_repository as sight_repository
import repositories.city_repository as city_repository
import pdb
from models.sight import Sight

sights_blueprint = Blueprint("sights", __name__)


@sights_blueprint.route("/sights/<id>")
def sights(id):
    city = city_repository.select(id)
    sights = city_repository.sights(city)
    return render_template("sights/index.html", city=city, sights=sights)
