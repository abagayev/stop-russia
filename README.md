 # Stop russian aggression

Be here to stop russian propaganda.

## English Version

### Як використовувати

To start with you should install Docker:  
https://docs.docker.com/get-docker/

After this run this command in your terminal:

```shell
docker run -ti --rm abagayev/stop-russia
```

### Launch in the cloud

The best way of bombing their websites is from cloud services like DigitalOcean, it gives the possibility of scaling to big number of servers and IP addresses in different countries.

To automate the running in cloud check the folder `automation`, at the moment we support the following providers:
- digital ocean
- microsoft azure

### Limitations

Attention! Only use this service where you cannot damage your internet connection. Use VPN, invite those who are outside of the Ukraine territory.
DON'T USE WHILE IN SHELTERS! you can be damaging those who are trying to talk to their families or follow the news.
DON'T USE IN PUBLIC NETWORKS, for example in the offices, you can damage your local provider.
НЕ ВИКОРИСТОВУЙТЕ В ПУБЛІЧНИХ МЕРЕЖАХ - наприклад в офісах, ви можете задати школи місцевому провайдеру

### How it works

The image uses `bombardier` to create the maximum load on the dangerouse websites for Ukraine - russian propaganda and authorities close to the occupation power. This is not a perfect tool, but together we will be able to turn their network down if we do it from the different parts of the world.

The list of the websites is in the file `resources.txt`. It can be add more websites to this file in your pull requests or create a copy of image at your machines.

### Let's do it together!

Add issues, create pull requests.

## Ukrainian Version

### Як використовувати

Для початку треба встановити Docker:  
https://docs.docker.com/get-docker/

Після цього запустити одну команду у терміналі:

```shell
docker run -ti --rm abagayev/stop-russia
```

### Запуск у хмарі

Краще за все запускати бомбардування з хмарних сервісів (наприклад DigitalOcean), це дає можливість масштабування до великої кількості серверів та IP адрес у різних країнах.

Для автоматизації розгортання у хмарі дивіться в теку `automation`, зараз є наступні провайдери:
- digital ocean 
- microsoft azure

### Обмеження

Увага! Використовуйте це ПО тільки там, де ви не можете завдати шкоди інтернет мережі. Користуйтесь сторонніми VPN, запрошуйте тих, хто знаходиться за територією України. 

НЕ ВИКОРИСТОВУЙТЕ В УКРИТТЯХ - ви можете нашкодити тим, хто зараз розмовляє з родиною чи відслідковує новини.

НЕ ВИКОРИСТОВУЙТЕ В ПУБЛІЧНИХ МЕРЕЖАХ - наприклад в офісах, ви можете задати школи місцевому провайдеру

### Як це працює

Образ використовує `bombardier` для того, щоб створити максимальне навантаження на небезпечні для України сайти - російської пропаганди та органів близьких до окупаційної влади. Це не ідеальний інструмент, проте разом ми можемо завалити їх мережу, якщо будемо робити це зі всього світу.  

Список сайтів знаходиться у файлі `resources.txt`, його можна доповнювати у пул реквестах або розгортати копію імеджу на своїх машинах.

### Доповнюємо разом

Пишіть issues, створюйте pull requests.  
