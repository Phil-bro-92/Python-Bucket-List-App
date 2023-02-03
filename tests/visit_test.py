import unittest

from models.visit import Visit
from models.user import User
from models.city import City
from models.country import Country

class visitTest(unittest.TestCase):
    def setUp(self):
        self.country = Country("Germany", "Europe", 100)
        self.city = City("Berlin", self.country)
        self.user = User("Phil", "Broadley")
        self.visit = Visit(self.user, self.city, True, True)

    def test_visit_has_visited(self):
        self.assertEqual(True, self.visit.visited)

    def test_visit_has_on_list(self):
        self.assertEqual(True, self.visit.on_list)

    def test_visit_has_user(self):
        self.assertEqual(self.user, self.visit.user)

    def test_visit_has_city(self):
        self.assertEqual(self.city, self.visit.city)