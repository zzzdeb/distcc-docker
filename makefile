build:
	docker build -t distcc-server:latest --force-rm=true .

run:
	docker-compose up -d
