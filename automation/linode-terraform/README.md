# Linode terraform automation

Скрипт для створення інстансів на Linode в один клік.

### Підготовка

- Встанови terraform
https://learn.hashicorp.com/tutorials/terraform/install-cli
- Створи аккаунт на Linode:
https://www.linode.com/https://www.linode.com/
- Створи файл `./automation/linode-terraform/terraform.tfvars` з наступним змістом:

```tf
# отримайте ваш Personal Access Token тут -> https://cloud.linode.com/profile/tokens
# get your Personal Access Token here -> https://cloud.linode.com/profile/tokens
token = ""

# ваш публічний SSH ключ можна прочитати через команду `cat ~/.ssh/id_rsa.pub`
# your public SSH can be accessed with `cat ~/.ssh/id_rsa.pub`
authorized_keys = ""

# вигадайте будь-який пароль, це буде пароль до root користувача
# any password here, it will be used to access to root user
root_pass ="fuckU0putin"
```

### Як використовувати

0. Зайди в директорію `cd automation/linode-terraform`
1. `terraform init`
2. `terraform plan` перевір чи все правильно
3. `terraform apply` в промпті відповідь `yes`
4. Перевір наявність інстансів на сторінці https://cloud.linode.com/linodes

Налаштування:

- Кількість інстансів налаштовуємо в файлі `linode-terraform-template.tf` (розкоментуй або додай потрібну кількість блоків `resource`)
- Регіон та потужну можливість інстансу налаштовуємо в файлі `variables.tf`

### Обмеження

Увага! Інстанс створюється пустим, софт доведеться запускати руками:

```shell
SSH root<IP-адреса інстанса>
snap install docker
apt install screen
sudo fallocate -l 1G /swapfile && sudo chmod 600 /swapfile && sudo mkswap /swapfile && sudo swapon /swapfile > Enter
screen -S <назва_вкладки>
docker run -ti --rm abagayev/stop-russia
Ctrl+A
D
```

Не забудьте видалити утилізовані інстанси `terraform destroy`.

Увага! Зібрано на скору руч паяльником типу "кип'ятильник". Автор не несе відповідальності.

### Доповнюємо разом

Пишіть issues, створюйте pull requests.
