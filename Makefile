start:
	@docker compose up -d

restart:
	@docker compose down && docker compose up -d

stop:
	@docker compose down

update:
	@docker compose pull && docker compose down && docker compose up -d

delete:
	@docker compose down -v && docker system prune -a --volumes --force

logs:
	@docker compose logs -f $(container)
