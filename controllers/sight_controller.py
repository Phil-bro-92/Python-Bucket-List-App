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

@sights_blueprint.route("/sights/<id>/new")
def new_sight(id):
    city = city_repository.select(id)
    return render_template("sights/new.html", city=city)

@sights_blueprint.route("/sights/<id>", methods=["POST"])
def create_sight(id):
    city = city_repository.select(id)
    name = request.form["sight"]
    sight = Sight(name, city)
    sight_repository.save(sight)
    return redirect("/sights/" + id)