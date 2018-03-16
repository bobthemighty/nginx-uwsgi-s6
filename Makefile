run:
	FLASK_APP=src/hello.py flask run
build:
	docker build -f docker/Dockerfile . -t docker.made.com/hello
run-in-docker: build
	docker run -p 80:80 docker.made.com/hello
