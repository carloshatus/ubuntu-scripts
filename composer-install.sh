# !/bin/bash
# Ubuntu 18.04.3

# Utilitarios
sudo apt update && \
sudo apt install -y \
    curl \
	php-cli \
	php-mbstring \
	git \
	unzip && \

# Composer
cd ~
curl -sS https://getcomposer.org/installer -o composer-setup.php && \
curl -sS https://composer.github.io/installer.sig -o composer-installer.sig && \
HASH=`head -1 composer-installer.sig` && \
php -r "if (hash_file('SHA384', 'composer-setup.php') == '$HASH') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" && \
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer
composer

# limpar instalação
rm -f composer-installer.sig
rm -f composer-setup.php
