#
# Do not change content here, image automatically built
#
FROM alpine:latest

ARG BUILD_COMMIT
ARG BUILD_DATE

ENV \
	GENERAL_DOCKER_USERS_DEV="03192859189254" \
	GENERAL_DOCKER_USERS_PRD="alphasocket" \
	GENERAL_DOCKER_USER="alphasocket" \
	GENERAL_DOCKER_REGISTRIES_DEV="docker.io" \
	GENERAL_DOCKER_REGISTRIES_PRD="docker.io" \
	GENERAL_DOCKER_REGISTRY="docker.io" \
	GENERAL_KEYS_TRUE="True" \
	GENERAL_KEYS_FALSE="False" \
	GENERAL_KEYS_DEV="dev" \
	GENERAL_KEYS_PRD="prd" \
	BUILD_USER="03192859189254" \
	BUILD_REGISTRY="docker.io" \
	BUILD_REPO="https://github.com/alphaSocket/dockerized-shopware-cli-alpine" \
	BUILD_BRANCH="latest" \
	BUILD_VERSION="latest" \
	BUILD_ENV="prd" \
	BUILD_PORTS_MAIN="" \
	BUILD_PORTS_ADDITIONAL="" \
	BUILD_NAME="shopware-cli-alpine" \
	BUILD_FROM="alpine:latest" \
	BUILD_CMD="/usr/sbin/crond -f -l $CONFIG_CRON_LOG_LEVEL" \
	SETUP_DEPENDENCIES_SETUP="" \
	SETUP_DEPENDENCIES_CONFIG="" \
	SETUP_DEPENDENCIES_MANAGEMENT="bash htop curl git mysql-client" \
	SETUP_DEPENDENCIES_PHP="php7 php7-phar php7-soap php7-iconv php7-intl php7-xml php7-json php7-zlib php7-gd php7-ctype php7-gd php7-pdo_mysql php7-dom php7-mcrypt php7-curl php7-openssl php7-opcache" \
	SETUP_DEPENDENCIES_DEVELOP="" \
	SETUP_DEPENDENCIES_RUNTIME="bash htop curl git mysql-client  $SETUP_DEPENDENCIES_SECURITY php7 php7-phar php7-soap php7-iconv php7-intl php7-xml php7-json php7-zlib php7-gd php7-ctype php7-gd php7-pdo_mysql php7-dom php7-mcrypt php7-curl php7-openssl php7-opcache" \
	SETUP_PATHS_SETUP="/usr/local/bin/setup" \
	SETUP_PATHS_CONFIG="/usr/local/bin/config" \
	SETUP_PATHS_BINARIES="/usr/local/bin" \
	SETUP_URLS_COMPOSER="https://getcomposer.org/composer.phar" \
	CONFIG_REDINESS_TEST="true" \
	CONFIG_LIVENESS_TEST="true" \
	CONFIG_GROUPS_ADDITIONAL_ID="1001" \
	CONFIG_GROUPS_ADDITIONAL_NAME="" \
	CONFIG_GROUPS_MAIN_ID="1200" \
	CONFIG_GROUPS_MAIN_NAME="shopware" \
	CONFIG_USERS_ADDITIONAL_ID="1001" \
	CONFIG_USERS_ADDITIONAL_NAME="" \
	CONFIG_USERS_ADDITIONAL_GROUPS="" \
	CONFIG_USERS_MAIN_ID="1200" \
	CONFIG_USERS_MAIN_NAME="shopware-cli" \
	CONFIG_USERS_MAIN_GROUPS="shopware" \
	CONFIG_PATHS_CONTAINER_STATUS="/tmp/container_status" \
	CONFIG_PATHS_WEBROOT="/var/www/html" \
	CONFIG_PATHS_BINARIES="/usr/local/bin" \
	CONFIG_CRON_LOG_LEVEL="8"
ADD imports/bin/docker-config /usr/local/bin/docker-config
ADD imports/bin/docker-run /usr/local/bin/docker-run
ADD imports/bin/docker-rediness-test /usr/local/bin/docker-rediness-test
ADD imports/bin/docker-liveness-test /usr/local/bin/docker-liveness-test
ADD imports/bin/setup /usr/local/bin/setup/1519338653
ADD imports/bin/config /usr/local/bin/config/1519338653


RUN chmod +x -R /usr/local/bin && \
    sync && \
    /usr/local/bin/setup/1519338653 1>/dev/stdout 2>/dev/stderr




ENTRYPOINT ["/bin/sh", "-c"]
CMD ["/usr/local/bin/docker-run"]

LABEL \
    org.label-schema.vcs-ref="$BUILD_COMMIT" \
    org.label-schema.vcs-url="https://github.com/alphaSocket/dockerized-shopware-cli-alpine"