COMPOSER = ./composer.phar
COMPOSER_CONF = ./composer.json

.PHONY: all vendor

all: vendor

$(COMPOSER):
	curl -sS https://getcomposer.org/installer | php

vendor: $(COMPOSER) $(COMPOSER_CONF)
	$(COMPOSER) self-update
	$(COMPOSER) install --dev
	$(COMPOSER) update
