#!/usr/bin/env bash

# Fail fast
set -e

echo "Iniciando servidor local Jekyll..."

echo "Limpando cache..."
bundle exec jekyll clean

echo "Instalando dependências..."
bundle install

echo "Usando configs: _config.yml + _config_local.yml"
echo ""

bundle exec jekyll serve --livereload --config _config.yml,_config_local.yml
