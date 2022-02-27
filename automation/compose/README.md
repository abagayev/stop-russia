# Docker compose automation

Скрит для створення і налаштування бомбардувальників у docker compose.

### Як використовувати

Для початку треба встановити Docker:  
https://docs.docker.com/get-docker/

Після цього запустити команду:

```shell
docker compose up
```

Compose керує контейнерами на машині за допомогою простого yaml файлу.

### Як змінити кількість піднятих бомдардувальників

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
