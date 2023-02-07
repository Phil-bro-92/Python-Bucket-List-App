from flask import render_template, request, redirect, Blueprint
import repositories.user_repository as user_repository
from models.user import User

users_blueprint = Blueprint("users", __name__)


@users_blueprint.route("/users")
def users():
    users = user_repository.select_all()
    return render_template("users/index.html", users=users)


@users_blueprint.route("/users/filter_by_first_name")
def users_first_name():
    users = user_repository.filter_by_first_name()
    return render_template("users/index.html", users=users)

@users_blueprint.route("/users/filter_by_first_name_down")
def users_first_name_down():
    users = user_repository.filter_by_first_name_down()
    return render_template("users/index.html", users=users)

@users_blueprint.route("/users/filter_by_last_name_down")
def users_last_name_down():
    users = user_repository.filter_by_last_name_down()
    return render_template("users/index.html", users=users)


@users_blueprint.route("/users/<id>/delete", methods=["POST"])
def delete(id):
    user_repository.delete(id)
    return redirect("/users")

@users_blueprint.route("/users/new")
def new_user():
    return render_template("users/new.html")


@users_blueprint.route("/users", methods=["POST"])
def create_user():
    first_name = request.form["first_name"].title()
    last_name = request.form["last_name"].title()
    user = User(first_name, last_name)
    user_repository.save(user)
    return redirect("/users")


@users_blueprint.route("/users/<id>/edit", methods=["POST"])
def edit_user(id):
    user = user_repository.select(id)
    return render_template("users/edit.html", user=user)


@users_blueprint.route("/users/<id>/update", methods=["POST"])
def update_user(id):
    first_name = request.form["update_first_name"].title()
    last_name = request.form["update_last_name"].title()
    updated_user = User(first_name, last_name)
    updated_user.id = id
    user_repository.update(updated_user)
    return redirect("/users")
