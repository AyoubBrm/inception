all :
	docker compose up -d --build
fclean :
	bash requirements/mariadb/tools/clean.sh
down :
	docker compose down -v
cach:
	docker buildx prune -f
stop :
	docker compose stop 
start :
	docker compose start 
logs :
	docker compose logs 