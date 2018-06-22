import pytest


class TestApp:
	
	def test_root(self, client):
		resp = client.get('/')
		assert resp.status_code == 200
	
	def test_ping(self, client):
		resp = client.get('/ping')
		assert resp.status_code == 200
		assert resp.json == {'ping': 'pong'}
