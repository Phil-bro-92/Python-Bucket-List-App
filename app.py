from flask import Flask, render_template

from controllers.user_controller import users_blueprint
# from controllers.city_controller import cities_blueprint
# from controllers.country_controller import countries_blueprint
# from controllers.sight_controller import sight_controller
# from controllers.visit_controller import visit_controller

app = Flask(__name__)

app.register_blueprint(users_blueprint)
# app.register_blueprint(cities_blueprint)
# app.register_blueprint(countries_blueprint)
# app.register_blueprint(sight_controller)
# app.register_blueprint(visit_controller)


@app.route('/')
def home():
    return render_template('index.html')

if __name__ == '__main__':
    app.run(debug=True)