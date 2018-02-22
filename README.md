# Alphasocket/dockerized-shopware-cli-alpine
#### shopware-cli-alpine
Alpine container with all dependencies to manage a shopware installation (crons included)


| [![Build Status](https://semaphoreci.com/api/v1/alphasocket/dockerized-shopware-cli-alpine/branches/latest/badge.svg)](https://semaphoreci.com/alphasocket/dockerized-shopware-cli-alpine) | Size / Layers | Version |
| ----- | ----- | ----- |
| Dev image | [![](https://images.microbadger.com/badges/image/03192859189254/dockerized-shopware-cli-alpine:latest.svg)](https://microbadger.com/images/03192859189254/shopware-cli-alpine:latest ) | [![](https://images.microbadger.com/badges/version/03192859189254/dockerized-shopware-cli-alpine:latest.svg)](https://microbadger.com/images/03192859189254/shopware-cli-alpine:latest) |
| Prd image | [![](https://images.microbadger.com/badges/image/alphasocket/shopware-cli-alpine:latest.svg)](https://microbadger.com/images/alphasocket/shopware-cli-alpine:latest ) | [![](https://images.microbadger.com/badges/version/alphasocket/shopware-cli-alpine:latest.svg)](https://microbadger.com/images/alphasocket/shopware-cli-alpine:latest) |

## Branches & Versions
- latest
- latest-dev


## Packages installed
- Runtime dependencies:
  + bash
  + htop
  + curl
  + git
  + mysql-client
  + $SETUP_DEPENDENCIES_SECURITY
  + php7
  + php7-phar
  + php7-soap
  + php7-iconv
  + php7-xml
  + php7-json
  + php7-zlib
  + php7-gd
  + php7-ctype
  + php7-gd
  + php7-pdo_mysql
  + php7-dom
  + php7-mcrypt
  + php7-curl
  + php7-openssl
  + php7-opcache


## Configurable envvars
~~~
CONFIG_REDINESS_TEST="true"
CONFIG_LIVENESS_TEST="true"
CONFIG_GROUPS_ADDITIONAL_ID="1001"
CONFIG_GROUPS_ADDITIONAL_NAME=""
CONFIG_GROUPS_MAIN_ID="1200"
CONFIG_GROUPS_MAIN_NAME="shopware"
CONFIG_USERS_ADDITIONAL_ID="1001"
CONFIG_USERS_ADDITIONAL_NAME=""
CONFIG_USERS_ADDITIONAL_GROUPS=""
CONFIG_USERS_MAIN_ID="1200"
CONFIG_USERS_MAIN_NAME="shopware-cli"
CONFIG_USERS_MAIN_GROUPS="shopware"
CONFIG_PATHS_CONTAINER_STATUS="/tmp/container_status"
CONFIG_PATHS_WEBROOT="/var/www/html"
CONFIG_PATHS_BINARIES="/usr/local/bin"
CONFIG_CRON_LOG_LEVEL="8"
~~~
