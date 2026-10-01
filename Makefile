start:
	@docker compose up -d

restart:
	@docker compose down && docker compose up -d

stop:
	@docker compose down

update:
	@docker compose pull && docker compose down && docker compose up -d

logs:
	@docker compose logs -f $(container)
