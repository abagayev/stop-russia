[UA](#-linode-автоматизація) | [EN](#-linode-automation)

---

# 🇺🇦 Linode Автоматизація

Скрипт для створення і налаштування інстансів бомбардувальників на Linode в один клік.

Прогрес:

- WEB: https://stats.uptimerobot.com/1zzXGs6j1z
- API: (дока - https://uptimerobot.com/api/, read-only API key - `ur1656914-20fbb55acfe4ded721f786c7`)
- RSS: http://rss.uptimerobot.com/u1656914-6fa9918b99b0ce678f4600e76414227

### Як використовувати

- Для початку треба встановити і налаштувати `linode-cli`:
https://www.linode.com/docs/guides/linode-cli/

- Виконати налаштування з розділу - Initial Configuration of the Linode CLI (https://www.linode.com/docs/guides/linode-cli/)

- Створи файл з ім'ям `env` та запиши в нього стійкий пароль.

- Після цього запустити команду ініціалізації:

```shell
./init.sh 10
```

де `10` це число linodes які будуть створені. Ліміт в аккаунті за замовчуванням - 10.

Скрипт запускає інстанс, на якому запускається докер імедж через команду screen для ручного моніторингу скриптів.

Більше про screen:
https://www.tecmint.com/screen-command-examples-to-manage-linux-terminals/

Щоб видалити створені інстанси:

```shell
./clear.sh
```

### Як це працює

Скрипт ініціалізації створює інстансу у випадковому активному регіоні і налаштовує на ній все для бомбардування. Інстанс запускається з паролем, який ми передаємо через env файл, також використовується найдешевший тип інстансів за 5 баксів на місяць.

### Доповнюємо разом

Пишіть issues, створюйте pull requests.

---

# 🇺🇸 Linode Automation

Script for creating and setting up linode instances with bombardier.

Progress:

- WEB: https://stats.uptimerobot.com/1zzXGs6j1z
- API: (docs - https://uptimerobot.com/api/, read-only API key - `ur1656914-20fbb55acfe4ded721f786c7`)
- RSS: http://rss.uptimerobot.com/u1656914-6fa9918b99b0ce678f4600e76414227

### How to use

At first install and setup `linode-cli` on your machine:
https://www.linode.com/docs/guides/linode-cli/

Make settings from the section - https://www.linode.com/docs/guides/linode-cli/ (https://www.linode.com/docs/guides/linode-cli/)

Create a file named `env` and write a strong password to it.

After that run initialization script:

```shell
./init.sh 10
```

where `10` is a number of linodes to be created.

The script launches an instance that runs the docker image via the screen command to manually monitor the scripts.

More about screen:
https://www.tecmint.com/screen-command-examples-to-manage-linux-terminals/

To remove created instances run:

```shell
./clear.sh
```

### How it works

Script creates linodes in random active region and setup everything for bombardier.

Instance is running with existing password from env file, also cheapest linode is used (5 usd month).

### Contributing

Create issues, create pull requests.
