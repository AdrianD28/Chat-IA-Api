import unittest
import requests

class TestApp(unittest.TestCase):
    def test_get_root(self):
        response = requests.get('http://localhost:5000/') 
        self.assertEqual(response.status_code, 200)

if __name__ == '_main_':
    unittest.main()