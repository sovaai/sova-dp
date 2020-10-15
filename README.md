Диалоговый Процессор (тест)
===

Описание
===
Диалоговый Процессор является компонентом проекта SOVA и предназначен для формирования ответов на текстовые запросы пользователей, поступающие в режиме связного диалога на естественном языке. Диалоговый Процессор формирует ответ на запрос на основании внутренних весовых алгоритмов в контексте текущего диалога в соответствии с предварительно подготовленным набором сценариев и правил  формирования ответов, записанных на специализированном языке Dialog Language (DL).

Быстрый старт
===

Для запуска Диалогового Процессора в стандартном режиме необходимо выполнить следующие команды:
```bash
git clone git@github.com:sovaai/sova-dp.git sova
cd sova
./install.sh
docker-compose up -d
docker-compose exec service python3 command.py bot:create
```
Диалоговый Процессор запустится с Базой Знаний по умолчанию в режиме docker-compose и будет принимать запросы на localhost. 
Далее можно открыть браузер по адресу http://localhost. На этой странице будет загружен виджет, с помощью которого можно вести диалог с ботом. 

##### Конфигурационный файл

Параметры конфигурации указываются в файле переменных окружения `.env`. Он копируется из файла-примера `.env.example` скриптом установки `install.sh`

```
POSTGRES_USER=postgres
POSTGRES_PASSWORD=pgpassword
POSTGRES_DB=sova
NLAB_SOVA_SENTRY_DSN=https://sentry.com/
NLAB_SOVA_VERSION=0.0.2
NLAB_SOVA_DEBUG=True
NLAB_SOVA_DB_DSN=postgres://postgres:pgpassword@db:5432/sova
NLAB_DLPATH=./var/dldata/sample
```
