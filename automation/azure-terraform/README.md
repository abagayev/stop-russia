[UA](automation/azure-terraform#-microsoft-azure-terraform-автоматизація) | [EN](automation/azure-terraform#-microsoft-azure-terraform-automation)

---

# 🇺🇦 Microsoft Azure Terraform Автоматизація

Скрипт для створення і налаштування інстансів бомбардувальників у Azure один клік.

### Підготовка

- Встановити terraform: https://learn.hashicorp.com/tutorials/terraform/install-cli

- Підготувати azure provider: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs

### Як використовувати

0. `cd automation/azure-terraform`
1. Почитай `variables.tf`
1. Го `terraform init`
2. Го `az login` и зроби діло
3. Го `terraform plan` и глянь
4. Го `terraform apply` и вперед
5. ???

Крутимо налаштування в terraform скільки хочемо контейнерів (на скільки гаманця хватить).

### Обмеження

**Увага!** Зібрано на скору руч паяльником типу "кип'ятильник". Автор не несе відповідальності.

Не забудьте видалити утилізовані інстанси `terraform destroy`.

### Доповнюємо разом

Пишіть issues, створюйте pull requests.

---

# 🇺🇸 Microsoft Azure Terraform Automation

Script for creating and setting up bombardier in Azure.

### Setup

- Install terraform: https://learn.hashicorp.com/tutorials/terraform/install-cli

- Prepare azure provider: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs

### How to use

0. `cd automation/azure-terraform`
1. Check `variables.tf`
1. Run `terraform init`
2. Run `az login`
3. Run `terraform plan`
4. Run `terraform apply`
5. ???

You can change terraform settings to increase number of container instances if you wallet can allow it.

### Warning

This is ad-hoc solution. Author does'nt bear any responsibility.

Don't forget to remove used instances with `terraform destroy`.

### Contributing

Create issues, create pull requests.
