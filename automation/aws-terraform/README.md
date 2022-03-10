[UA](#-aws-terraform-автоматизація) | [EN](#-aws-terraform-automation)

---

# 🇺🇦 AWS Terraform Автоматизація

Скрипт для створення і налаштування інстансів бомбардувальників у AWS один клік.

По завершенню виконання - docker container із бомбардиром вже запущено! Не треба лізти та вмикати додатково!

Якщо хочете переконатись що все ок - то є можливість залогінитись.

Прогрес:

- WEB: https://stats.uptimerobot.com/1zzXGs6j1z
- API: (дока - https://uptimerobot.com/api/, read-only API key - `ur1656914-20fbb55acfe4ded721f786c7`)
- RSS: http://rss.uptimerobot.com/u1656914-6fa9918b99b0ce678f4600e76414227

### Як використовувати

- Встановити terraform: https://learn.hashicorp.com/tutorials/terraform/install-cli

0. `cd automation/aws-terraform`
1. Почитай `variables.tf`
2. export AWS_ACCESS_KEY & export AWS_SECRET_KEY
3. Го `terraform init`
4. Го `terraform plan` и глянь
5. Го `terraform apply` и вперед
6. ???

- Крутимо налаштування в terraform скільки хочемо контейнерів (на скільки гаманця хватить).

### Якщо треба на інстанс

Додай публічний ключ до variables.

### Якщо треба змінити кількість інстансів

Дивись instance_count у variables. Цей код працю цілком у free-tier. Але якщо збільшити кількість інстансів більш ніж 1 - то вже за бабло.

### Обмеження

**Увага!** Зібрано на скору руч паяльником типу "кип'ятильник". Автор не несе відповідальності.

Не забудьте видалити утилізовані інстанси `terraform destroy`.

### Доповнюємо разом

Пишіть issues, створюйте pull requests.

---

# 🇺🇸 AWS Terraform Automation

Script for creating and setting up bombardier in Aws in one click.

After script is finished, docket container with bombardier is already running! You don't need to enable it manually.

If you want to check if it's running - login to container.

Progress:

- WEB: https://stats.uptimerobot.com/1zzXGs6j1z
- API: (docs - https://uptimerobot.com/api/, read-only API key - `ur1656914-20fbb55acfe4ded721f786c7`)
- RSS: http://rss.uptimerobot.com/u1656914-6fa9918b99b0ce678f4600e76414227

### How to use

- Install terraform: https://learn.hashicorp.com/tutorials/terraform/install-cli

0. `cd automation/aws-terraform`
1. Read `variables.tf`
2. export AWS_ACCESS_KEY & export AWS_SECRET_KEY
3. Run `terraform init`
4. Run `terraform plan`
5. Run `terraform apply`
6. ???

You can change terraform settings to increase number of container instances if you wallet can allow it.

### If you want to login into instance

Add public key to `variables`.

### If you want to change number of instances

Check `instance_count` in `variables.tf`, current code works in free-tier, but if you increase number of instances it will cost money.

### Limitations

**Warning!** This is ad-hoc solution. Author does'nt bear any responsibility.

Don't forget to remove used instances with `terraform destroy`.

### Contributing

Create issues, create pull requests.
