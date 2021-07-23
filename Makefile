docker-build:
	docker-compose build
docker-up:
	docker-compose up -d
psql:
	docker-compose exec db psql -U prisma
prisma:
	docker-compose exec prisma /bin/sh
prisma-migrate:
	docker-compose exec prisma npx prisma migrate dev --name init
prisma-studio:
	docker-compose exec prisma npx prisma studio