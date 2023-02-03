import unittest

from models.user import User

class userTest(unittest.TestCase):
    def setUp(self):
        self.user = User("Phil", "Broadley")

    def test_user_has_first_name(self):
        self.assertEqual("Phil", self.user.first_name)

    def test_user_has_last_name(self):
        self.assertEqual("Broadley", self.user.last_name)