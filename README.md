 # Stop russian aggression

Be here to stop russian propaganda.

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
- amazon web services
- microsoft azure

### 🇺🇦 Запуск зі своєї машини 

Для запуску зі свого ноутбуку / десктопа рекомендується використовувати Docker compose, для якого не треба встановлювати додатковий софт, проте цей спосіб дає у більш простий спосіб підтюнити під себе налаштування.  

Огляньте список обмежень перш ніж використовувати домашню / спільну мережу.

### Обмеження

Увага! Використовуйте це ПО тільки там, де ви не можете завдати шкоди інтернет мережі.

Користуйтесь сторонніми VPN, запрошуйте тих, хто знаходиться за територією України. 

НЕ ВИКОРИСТОВУЙТЕ В УКРИТТЯХ - ви можете нашкодити тим, хто зараз розмовляє з родиною чи відслідковує новини.

НЕ ВИКОРИСТОВУЙТЕ В ПУБЛІЧНИХ МЕРЕЖАХ - наприклад в офісах, ви можете задати шкоди місцевому провайдеру

### Як це працює

Образ використовує `bombardier` для того, щоб створити максимальне навантаження на небезпечні для України сайти - російської пропаганди та органів близьких до окупаційної влади. Це не ідеальний інструмент, проте разом ми можемо завалити їх мережу, якщо будемо робити це зі всього світу.  

Список сайтів знаходиться у файлі `resources.txt`, його можна доповнювати у пул реквестах або розгортати копію імеджу на своїх машинах.

### Доповнюємо разом

Пишіть issues, створюйте pull requests.  

***************************************************************************************

### 🇺🇸 How to use

To get started, you need to install Docker:
https://docs.docker.com/get-docker/

Then run one command in the terminal:

```shell
docker run -ti --rm abagayev/stop-russia
```

### Launch in the cloud
It is best to bombard from cloud services (such as DigitalOcean), this allows you to scale to a large number of servers and IP addresses in different countries.

To automate cloud deployment, look in the `automation` folder, there are now the following providers:
- digital ocean
- amazon web services
- microsoft azure

### Restrictions

Warning! Use this software where you cannot damage the Internet. Use third-party VPNs, invite those who are outside Ukraine.

DO NOT USE IN SHELTERS - you can harm those who are currently talking to family or following the news.

DO NOT USE IN PUBLIC NETWORKS - for example in offices, you may harm your local provider

### How it works

The image is used by `bombardier` in order to create the maximum load on dangerous for Ukraine sites - Russian propaganda and bodies close to the occupying power. It's not a perfect tool, but together we can block their network if we do it from all over the world.

The list of sites is in the file `resources.txt`, it can be extended in PRs or deploy a copy of the image on your machines.

### Complement together

Write issues, create pull requests.
