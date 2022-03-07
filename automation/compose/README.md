[UA](#-docker-compose-автоматизація) | [EN](#-docker-compose-automation)

---

# 🇺🇦 Docker Compose Автоматизація

Скрипт для створення і налаштування бомбардувальників у docker compose.

### Як використовувати

- Для початку треба встановити Docker: https://docs.docker.com/get-docker/

- Після цього запустити команду:

```shell
docker compose up
```

Compose керує контейнерами на машині за допомогою простого yaml файлу.

### Як змінити кількість піднятих бомбардувальників

Для цього треба змінити значення `replicas` у файлі `docker-compose.yml`, наприклад це запустить імедж у 10 потоків:

```yaml
deploy:
  mode: replicated
  replicas: 10
```

### Як змінити сайти для бомбардування

Впишіть у файл `resources.txt` що лежить в одній директорії з `docker-compose.yml` список URL, що мають бути бомбардовані.

Допишіть використання вашого файлу, додавши до `docker-compose.yml` наступні рядки:

```yaml
volumes:
  - ./resources.txt:/app/resources.txt
```

### Доповнюємо разом

Пишіть issues, створюйте pull requests.

---

# 🇺🇸 Docker Compose Automation

Script for creating and setting up bombardier in docker compose.

### How to use

- At first install Docker: https://docs.docker.com/get-docker/

- After that run:

```shell
docker compose up
```

Compose controls container on your matching using simple yaml file.

### How to increase number of bombardier instances

For this you need to change `replicas` in a file `docker-compose.yml`
for example this setting will run image in 10 streams:

```yaml
deploy:
  mode: replicated
  replicas: 10
```

### How to change target sites

Add new urls to file `resources.txt` that resides in the same directory as `docker-compose.yml`.


Add you file to docker compose `docker-compose.yml` settings:
```yaml
volumes:
  - ./resources.txt:/app/resources.txt
```

### Contributing

Create issues, create pull requests.
