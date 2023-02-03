import unittest
from models.sight import Sight
from models.city import City
from models.country import Country

class sightTest(unittest.TestCase):
    def setUp(self):
        self.country = Country("Germany", "Europe" ,100)
        self.city = City("Berlin", self.country)
        self.sight = Sight("Alexander Platz", self.city)

    def test_sight_has_name(self):
        self.assertEqual("Alexander Platz", self.sight.name)

    def test_sight_city_has_name(self):
        self.assertEqual("Berlin", self.sight.city.name)

    def test_sight_city_has_country(self):
        self.assertEqual(self.country, self.sight.city.country)

    def test_sight_city_country_has_name(self):
        self.assertEqual("Germany", self.sight.city.country.name)

    def test_sight_city_country_has_continent(self):
        self.assertEqual("Europe", self.sight.city.country.continent)

    def test_sight_city_country_has_population(self):
        self.assertEqual(100, self.sight.city.country.population)