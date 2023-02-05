import pdb

from models.city import City
from models.country import Country
from models.sight import Sight
from models.user import User
from models.visit import Visit

import repositories.visit_repository as visit_repository
import repositories.city_repository as city_repository
import repositories.country_repository as country_repository
import repositories.sight_repository as sight_repository
import repositories.user_repository as user_repository


user_repository.delete_all()
visit_repository.delete_all()
country_repository.delete_all()
city_repository.delete_all()
sight_repository.delete_all()

user1 = User("Phil", "Broadley")
user_repository.save(user1)

user2 = User("Sarah", "Robertson")
user_repository.save(user2)

user3 = User("Billy", "McIsaac")
user_repository.save(user3)

country1 = Country("Germany", "Europe", 83600000)
country_repository.save(country1)

country2 = Country("Japan", "Asia", 126000000)
country_repository.save(country2)

country3 = Country("France", "Europe", 78000000)
country_repository.save(country3)

city1 = City("Tokyo", country2)
city_repository.save(city1)

city2 = City("Berlin", country1)
city_repository.save(city2)

city3 = City("Munich", country1)
city_repository.save(city3)

city4 = City("Paris", country3)
city_repository.save(city4)

city5 = City("Kyoto", country2)
city_repository.save(city5)

city6 = City("Nice", country3)
city_repository.save(city6)

sight1 = Sight("Tsukji Market", city1)
sight_repository.save(sight1)

sight2 = Sight("BrandenBurg Gate", city2)
sight_repository.save(sight2)

sight3 = Sight("Beer Festival", city3)
sight_repository.save(sight3)

sight4 = Sight("Alexander Platz", city2)
sight_repository.save(sight4)

visit1 = Visit(user1, city1, True, True)
visit_repository.save(visit1)

visit2 = Visit(user2, city2, False, True)
visit_repository.save(visit2)


pdb.set_trace()
