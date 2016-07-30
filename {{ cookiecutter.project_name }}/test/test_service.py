def test_with_client(client):
    response = client.get('/')
    assert response.content == 'Hello, World!'
