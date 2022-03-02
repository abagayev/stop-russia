# Google Cloud Platform (GCP) VM automation

Scripts to deploy `bombardier` Docker image to GCP.
You can control the number of instances and you can choose whether to attack all targets from the embedded `resources.txt` file, or supply a custom URL to target.

## How to use

Prerequisites:
- GCP account and a project capable of creating VMs (computing instances), [start trial](https://cloud.google.com/free).
- `gcloud` utility (see [how to install](https://cloud.google.com/sdk/docs/install))
- authenticate `gcloud` (run, `gcloud init`)

To deploy the image:
- Deploy one instance: `./automation/gcp-gcloud/deploy.sh`
- Deploy `n = 3` instances: `./automation/gcp-gcloud/deploy.sh -n 3`
- Deploy one instance to target interfax: `./automation/gcp-gcloud/deploy.sh -t https://interfax.ru`
- Deploy `n = 5` instances to target interfax: `./automation/gcp-gcloud/deploy.sh -n 5 -t https://interfax.ru`

In general, `-n COUNT` option controls the number of instances (default 1), and `-t TARGET` option, if supplied, will make the `bombardier` target that one url only (please, use full url, with `http://` or `https://`).

To clean up the VMs:
- `./automation/gcp-gcloud/clenup.sh`

This will only remove the VMs created by this script.

## How it works

GCP has an option to create a VM specifically for a single Docker container.
We do so with one command and we supply container options if needed.
We choose the smallest, cheapest `f1-micro` VM in `asia-northeast3-a` (Seoul) region (close to target).
Examine the scripts for yourself.



# Google Cloud Platform (GCP) VM автоматизація
Скріпти щоб розгорнути `bombardier` Докер образ у GCP.
Ви можете контролювати кількість екземплярів та обирати чи атакувати усі цілі 
із вбудованного `resources.txt` файлу, або надати спеціальну URL адресу як ціль.

## Як використовувати 

Передумови:
- GCP аккаунт та проект, що може створювати VM (обчислювальні екзкмпляри), 
 [розпочати тріалку](https://cloud.google.com/free).
- `gcloud` застосунок (дивись [як встановити](https://cloud.google.com/sdk/docs/install)) 
- аутентіфікувати `gcloud` (запустити, `gcloud init`)

Щоб розгорнути образ:
- Розгорнути один екземпляр: `./automation/gcp-gcloud/deploy.sh`
- Розгорнути `n = 3` екземплярів: `./automation/gcp-gcloud/deploy.sh -n 3`
- Розгорнути один екземпляр щоб атакувати interfax: `./automation/gcp-gcloud/deploy.sh -t https://interfax.ru`
- Розгорнути  `n = 5` екземплярів щоб атакувати interfax: `./automation/gcp-gcloud/deploy.sh -n 5 -t https://interfax.ru`

Загалом опція  `-n COUNT` контролює кількість екземплярів (за замовчуванням 1),
опція  `-t TARGET` (якщо вказана), змушує `bombardier` обирати за ціль саме той url
(будь ласка, використовуйте повний url, із `http://` чи `https://`).

Щоб видалити ВМ (VMs):
- `./automation/gcp-gcloud/clenup.sh`

Це прибере тільки ті ВМ, що були створені цим скриптом

## Як це працює
GCP має опцію створювати ВМ спеціально для єдіного Докер контейнера.
Ми робимо це однією командою і, якщо потрібно, вказуємо опції контейнера.
Ми обираємо найменшу і найдешевшу  `f1-micro` ВМ у `asia-northeast3-a` (Сеул) 
регіон найближчий до цілі.
Перед запуском перевіряйте скріпти самостійно (не запускайте незнайомі).