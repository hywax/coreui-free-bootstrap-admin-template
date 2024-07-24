build-nginx:
	docker build -t croreui:latest -f docker/Dockerfile .

run-nginx:
	docker run -d -p 8080:80 croreui:latest
