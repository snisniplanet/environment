#################
#	COMMANDS	#
#################

# Global Start

init:
	make up
	make install
	make setup

# Environment

up:
	docker-compose up -d
down:
	docker-compose down
start:
	docker-compose start
stop:
	docker-compose stop
build:
	docker-compose build
restart:
	docker-compose restart
rebuild:
	make build && make restart
new:
	docker-compose build --no-cache
command:
	docker-compose exec $(container) $(command)

# Applications

install:
	make command container="api" command="composer install"
	make command container="frontend" command="npm i"
	make command container="frontend" command="npm rebuild node-sass"

migrate:
	make command container="api" command="php artisan migrate"

fresh:
	make command container="api" command="php artisan migrate:fresh"

seed:
	make command container="api" command="php artisan db:seed"

setup:
	make command container="frontend" command="npm run build"
	make command container="api" command="php artisan key:generate"
	make migrate
	make command container="api" command="php artisan passport:install"
