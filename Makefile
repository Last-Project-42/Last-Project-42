
all:
	@rm -rf /home/eryilmaz/data
	@mkdir -p /home/eryilmaz/data/wordpress
	@mkdir -p /home/eryilmaz/data/mysql
	@docker-compose -f srcs/docker-compose.yml up  -d --build

down:
	@docker-compose -f srcs/docker-compose.yml down

re: clean all

clean:
	@rm -rf /home/eryilmaz/data
	@docker-compose -f srcs/docker-compose.yml down -v --remove-orphans     # Down ile konteynerleri durdurur ve bağlı volumeleri kaldırır
	@docker rmi -f $$(docker images -q) # Kullanılmayan imajları siler
clear:
	@docker system prune -a -f

setup:
	@if command -v docker >/dev/null 2>&1; then \
		echo "Docker is installed"; \
	else \
		echo "Docker is not installed. Installing Docker..."; \
		sudo apt-get update; \
		sudo apt-get install -y docker-ce docker-ce-cli containerd.io; \
	fi

	@if command -v docker-compose >/dev/null 2>&1; then \
		echo "Docker Compose is installed"; \
	else \
		echo "Docker Compose is not installed. Installing Docker Compose..."; \
		sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose; \
		sudo chmod +x /usr/local/bin/docker-compose; \
	fi

.PHONY: install

.PHONY: all down re clean clear setup
