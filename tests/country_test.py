import unittest
from models.country import Country

class countryTest(unittest.TestCase):
    def setUp(self):
        self.country = Country("Germany", "Europe", 100)
    
    def test_country_has_name(self):
        self.assertEqual("Germany", self.country.name)

    def test_country_has_continent(self):
        self.assertEqual("Europe", self.country.continent)

    def test_country_has_population(self):
        self.assertEqual(100, self.country.population)