[UA](#-vultr-автоматизація) | [EN](#-vultr-automation)

---

# 🇺🇦 Vultr Автоматизація

Скрипт для створення і налаштування інстансів бомбардувальників на Vultr в один клік.

Прогрес:

- WEB: https://stats.uptimerobot.com/1zzXGs6j1z
- API: (дока - https://uptimerobot.com/api/, read-only API key - `ur1656914-20fbb55acfe4ded721f786c7`)
- RSS http://rss.uptimerobot.com/u1656914-6fa9918b99b0ce678f4600e76414227

### Як використовувати

- Для початку треба встановити і налаштувати `vultr-cli`: https://github.com/vultr/vultr-cli
- Отримати Personal Access Token: https://my.vultr.com/settings/#settingsapi
- Після цього:

1. `export VULTR_API_KEY=your_api_key`
2. Го `cd ./automation/vultr`
3. Запусти `./init.sh 10`

де `10` це число інстансів які будуть створені. Ліміт в аккаунті за замовчуванням - 100.

Скрипт запускає інстанс, на якому протягом 10-15 хвилин запускається докер імедж через команду screen для ручного моніторингу скриптів.

Більше про screen: https://www.tecmint.com/screen-command-examples-to-manage-linux-terminals/

**Увага!** Зроблено на швидко руч, інстанси потрібно видаляти вручну.

### Як це працює

Скрипт ініціалізації створює інстансу у випадковому активному регіоні і налаштовує на ній все для бомбардування. Інстанс запускається з паролем, який можна дізнатися в адмінці після створення, використовується найдешевший тип інстансів за 5 баксів на місяць.

### Доповнюємо разом

Пишіть issues, створюйте pull requests.

---

# 🇺🇸 Vultr Automation

Script for creating and setting up Vultr instances with bombardier.

Progress:

- WEB: https://stats.uptimerobot.com/1zzXGs6j1z
- API: (docs - https://uptimerobot.com/api/, read-only API key - `ur1656914-20fbb55acfe4ded721f786c7`)
- RSS http://rss.uptimerobot.com/u1656914-6fa9918b99b0ce678f4600e76414227

### How to use

- At first install and setup `vultr-cli` on your machine: https://github.com/vultr/vultr-cli
- Get your Personal Access Token: https://my.vultr.com/settings/#settingsapi
- Then:

1. `export VULTR_API_KEY=your_api_key`
2. `cd ./automation/vultr`
3. `./init.sh 10`

where `10` is a number of instances to be created.

The script launches an instance that runs the docker image via the screen command to manually monitor the scripts.

More about screen: https://www.tecmint.com/screen-command-examples-to-manage-linux-terminals/

### How it works

Script creates instances in random active region and setup everything for bombardier.

Instance is running with random password (you'll be able to get it from admin panel), also cheapest plan is used (5 usd month).

### Contributing

Create issues, create pull requests.
