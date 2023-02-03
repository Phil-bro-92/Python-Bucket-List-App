import unittest
from models.city import City
from models.country import Country

class cityTest(unittest.TestCase):
    def setUp(self):
        self.country = Country("Germany", "Europe", 100)
        self.city = City("Berlin", self.country)

    def test_city_has_name(self):
        self.assertEqual("Berlin", self.city.name)
    
    def test_city_has_country_name(self):
        self.assertEqual("Germany", self.city.country.name)

    def test_city_has_country_continent(self):
        self.assertEqual("Europe", self.city.country.continent)
    
    def test_city_has_country_population(self):
        self.assertEqual(100, self.city.country.population)