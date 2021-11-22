db_work:
	docker-compose run --rm web create_db
create_test_db:
	docker-compose run --rm postgres psql -h postgres -U postgres -c "create database tests"
stuff_up:
	docker-compose up
stuff_gone:
	docker-compose down