[UA](#-digitalocean-droplet-автоматизація) | [EN](#-digitalocean-droplet-automation)

---

# 🇺🇦 DigitalOcean Droplet Автоматизація

Скрипт для створення і налаштування інстансів бомбардувальників у DigitalOcean в один клік.

Прогрес:

- WEB: https://stats.uptimerobot.com/1zzXGs6j1z
- API: (дока - https://uptimerobot.com/api/, read-only API key - `ur1656914-20fbb55acfe4ded721f786c7`)
- RSS: http://rss.uptimerobot.com/u1656914-6fa9918b99b0ce678f4600e76414227

### Як використовувати

- Для початку треба встановити і налаштувати `doctl`: https://docs.digitalocean.com/reference/doctl/how-to/install/

- Після цього запустити команду ініціалізації:

```shell
./init.sh 10
```

where `10` is a number of droplets to be created.

Скрипт запускає інстанс, на якому запускається докер імедж через команду screen для ручного моніторингу скриптів.

Більше про screen: https://www.tecmint.com/screen-command-examples-to-manage-linux-terminals/

Щоб видалити створені інстанси:

```shell
./clear.sh
```

### Як це працює

Скрипт ініціалізації створює інстансу у випадковому активному регіоні і налаштовує на ній все для бомбардування. Інстанс запускається з існуючими ssh-ключами, також використовується найдешевший тип інстансів за 5 баксів на місяць.

### Доповнюємо разом

Пишіть issues, створюйте pull requests.

---

# 🇺🇸 DigitalOcean Droplet Automation

Script for creating and setting up digital ocean instances with bombardier.

Progress:

- WEB: https://stats.uptimerobot.com/1zzXGs6j1z
- API: (docs - https://uptimerobot.com/api/, read-only API key - `ur1656914-20fbb55acfe4ded721f786c7`)
- RSS: http://rss.uptimerobot.com/u1656914-6fa9918b99b0ce678f4600e76414227

### How to use

- At first install and setup `doctl` on your machine: https://docs.digitalocean.com/reference/doctl/how-to/install/


- After that run initialization script:

```shell
./init.sh 10
```

where `10` is a number of droplets to be created.

Script creates DO droplet instances, where docker images is run using screen command, for manual script monitoring.

More about screen: https://www.tecmint.com/screen-command-examples-to-manage-linux-terminals/

To remove created instances run:

```shell
./clear.sh
```

### How it works

Script creates droplet in random active region and setup everything for bombardier.

Instance is running with existing ssh keys, also cheapest droplet is used (5 usd month).

### Contributing

Create issues, create pull requests.
