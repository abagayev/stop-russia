 # Azure terraform automation

Скрит для створення і налаштування інстансів бомбардувальників у Azure один клік.

### Підготовка

Встановити terraform  
https://learn.hashicorp.com/tutorials/terraform/install-cli

Підготувати azure provider  
https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs

### Як використовувати

0. `cd automation/azure-terraform`
1. Почитай `variables.tf`
1. Го `terraform init`
2. Го `az login` и сделай дело
3. Го `terraform plan` и глянь
4. Го `terraform apply` и вперед
5. ???

Крутим-вертим настройки в тераформе сколько хочем образцов контейнера ну и если кошелек позволяет.

### Обмеження

Внимание! Собрано на коленке с паяльником типа "кипятильник". Автор не несет ответственности.

Не забудьте видалити утилізовані інстанси `terraform destroy`

### Доповнюємо разом

Пишіть issues, створюйте pull requests.  
