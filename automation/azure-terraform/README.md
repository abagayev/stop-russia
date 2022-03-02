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

***************************************************************************************

Script for creating and setting up bombardier in Azure.


### Setup

Install terraform
https://learn.hashicorp.com/tutorials/terraform/install-cli

Prepare azure provider
https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs


### How to use

0. `cd automation/azure-terraform`
1. Check `variables.tf`
1. Run `terraform init`
2. Run `az login` 
3. Run `terraform plan` 
4. Run `terraform apply` 
5. ???

You can change terraform settings to incrase number of container instances if you wallet can allow it.

### Warining

This is ad-hoc solution. Author does'nt bear any responsibility

Don't forget to remove used instances with `terraform destroy`


### Contributing

Create issues, create pull requests.
