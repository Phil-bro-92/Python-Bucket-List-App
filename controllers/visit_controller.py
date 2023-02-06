from flask import render_template, request, redirect, Blueprint
import repositories.visit_repository as visit_repository
import repositories.city_repository as city_repository
import repositories.country_repository as country_repository
import repositories.user_repository as user_repository
from models.visit import Visit
import pdb

visits_blueprint = Blueprint("visits", __name__)


@visits_blueprint.route("/visits/<user_id>")
def visits(user_id):
    user = user_repository.select(user_id)
    visits = visit_repository.visits(user)

    return render_template("visits/index.html", user=user, visits=visits)


@visits_blueprint.route("/visits/<user_id>/new")
def new_visit(user_id):
    cities = city_repository.select_all()
    user = user_repository.select(user_id)
    return render_template("visits/new.html", user=user, cities=cities)


@visits_blueprint.route("/visits/<user_id>/new", methods=["POST"])
def create_bucket_list_entry(user_id):
    user = user_repository.select(user_id)
    city = city_repository.select(request.form["city"])
    visited = request.form["visited"]
    visit = Visit(user, city, visited, True)
    visit_repository.save(visit)
    return redirect("/visits/" + user_id)
