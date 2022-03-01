 # AWS automation

Скрит для створення і налаштування інстансів бомбардувальників у AWS один клік.
По закінчанню виконання - docker container із бомбардером вже запущено! Не треба лізті та вмікати додатково!
Ліше якщо хочете переконатісь що все ок - то є можливість залогінитись

### Як використовувати

Встановити terraform  
https://learn.hashicorp.com/tutorials/terraform/install-cli

0. `cd automation/aws-terraform`
1. Почитай `variables.tf`
2. export AWS_ACCESS_KEY & export AWS_SECRET_KEY
3. Го `terraform init`
4. Го `terraform plan` и глянь
5. Го `terraform apply` и вперед
6. ???

Крутим-вертим настройки в тераформе сколько хочем образцов контейнера ну и если кошелек позволяет.

### Якщо треба на інстанс

Додай публічний ключ до variables

### Якщо треба змінити кількисть інстансів

Дивись instance_count у variables. Цей код працю цілком у free-tier. Але якщо збільшити кількісь інстансів більш ніж 1 - то вже за бабло

### Обмеження

Внимание! Собрано на коленке с паяльником типа "кипятильник". Автор не несет ответственности.

Не забудьте видалити утилізовані інстанси `terraform destroy`

### Доповнюємо разом

Пишіть issues, створюйте pull requests.  

***************************************************************************************


Script for creating and setting up bombardier in Aws in one click.
After script is finished, docket container with bombardier is already running! You don't need to enable it manually. If you want to check if it's running - login to cotainer


### How to use

Install terraform
https://learn.hashicorp.com/tutorials/terraform/install-cli

0. `cd automation/aws-terraform`
1. Read `variables.tf`
2. export AWS_ACCESS_KEY & export AWS_SECRET_KEY
3. Run `terraform init`
4. Run `terraform plan` 
5. Run `terraform apply` 
6. ???

You can change terraform settings to incrase number of container instances if you wallet can allow it.

### If you want to login into instance

Add public key to `variables`

### If you want to change number of instances

Check `instance_count` in `variables.tf`, current code works in free-tier, but if you increase number of instances it will cost money

### Limitations


This is ad-hoc solution. Author does'nt bear any responsibility

Don't forget to remove used instances with `terraform destroy`

### Contributing

Create issues, create pull requests.
