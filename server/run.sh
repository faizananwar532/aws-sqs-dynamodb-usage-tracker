#starts the server
gunicorn --bind 0.0.0.0:5000 server:app
