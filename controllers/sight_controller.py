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

@sights_blueprint.route("/sights/<id>/filter_by_sight_down")
def filter_by_sight_down(id):
    city = city_repository.select(id)
    sights = city_repository.filter_sights_by_name_down(city)
    return render_template("sights/index.html", city=city, sights=sights)

@sights_blueprint.route("/sights/<id>/new")
def new_sight(id):
    city = city_repository.select(id)
    return render_template("sights/new.html", city=city)


@sights_blueprint.route("/sights/<id>", methods=["POST"])
def create_sight(id):
    city = city_repository.select(id)
    name = request.form["sight"].title()
    sight = Sight(name, city)
    sight_repository.save(sight)
    return redirect("/sights/" + id)


@sights_blueprint.route("/sights/<city_id>/<sight_id>/delete", methods=["POST"])
def delete_sight(city_id, sight_id):
    sight_repository.delete(sight_id)
    return redirect("/sights/" + city_id)


@sights_blueprint.route("/sights/<city_id>/<sight_id>/edit", methods=["POST"])
def edit_sight(city_id, sight_id):
    city = city_repository.select(city_id)
    sight = sight_repository.select(sight_id)
    return render_template("sights/edit.html", sight=sight, city=city)


@sights_blueprint.route("/sights/<city_id>/<sight_id>/update", methods=["POST"])
def update_sight(city_id, sight_id):
    sight = request.form["update_sight"].title()
    city = city_repository.select(city_id)
    updated_sight = Sight(sight, city, sight_id)
    sight_repository.update(updated_sight)
    return redirect("/sights/" + city_id)
