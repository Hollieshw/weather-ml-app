import unittest
from app import app

class TestAppSmoke(unittest.TestCase):
    
    def setUp(self):
        app.testing = True
        self.client = app.test_client()

    def test_home_route(self):
        response = self.client.get("/")
        self.assertEqual(response.status_code, 200) 
        # Verify that HTTP get request is successful

    def test_message(self):
        response = self.client.get("/")
        self.assertIn(b"<form", response.data) 
        # Verify that the page loaded contains a form tag

if __name__ == "__main__":
    unittest.main()