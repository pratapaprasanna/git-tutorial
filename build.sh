docker build . -t flask_app
docker run -d -p 5005:5000 flask_app
