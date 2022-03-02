 # DigitalOcean droplet automation

Скрит для створення і налаштування інстансів бомбардувальників у DigitalOcean в один клік.

### Як використовувати

Для початку треба встановити і зконфігурувати doctl:  
https://docs.digitalocean.com/reference/doctl/how-to/install/

Після цього запустити команду ініціалізації:

```shell
./init.sh 10
```
where 10 its count of droples which will be up

Скрипт запускає інстанс, на якому запускається докер імедж через команду screen для ручного моніторингу скриптів.

Більше про screen:  
https://www.tecmint.com/screen-command-examples-to-manage-linux-terminals/

Щоб видалити створені інстанси:

```shell
./clear.sh
```

### Як це працює

Скрипт ініціалізації створює інстансу у випадковому активному регіоні і налаштовує на ній все для бомбардування. Інстанса запускається с існуючими ssh ключами, також використовується найдешевший тип інстансів за 5 баксів на місяць.

### Доповнюємо разом

Пишіть issues, створюйте pull requests.  

***************************************************************************************

Script for creating and setting up digital ocean instances with bombardier

### How to use

At first install and setup `doctl` on your machine:
https://docs.digitalocean.com/reference/doctl/how-to/install/


After that run initialization script 

```shell
./init.sh 10
```
where 10 its count of droples which will be up

Script creates DO droplet instances, where docker images is run using screen command, for manual script monitoring

More about screen:
https://www.tecmint.com/screen-command-examples-to-manage-linux-terminals/

To remove created instances run:

```shell
./clear.sh
```

### How it works 

Script creates droplet in random active region and setup everything for bombardier.
Instance is running with existing ssh keys, also cheapest droplet is used (5 usd month)

### Contributing

Create issues, create pull requests.
