#!/bin/bash

# Nome do ambiente virtual
VENV_DIR="venv"

echo "🔧 Criando ambiente virtual Python em ./$VENV_DIR..."

# Cria o ambiente virtual
python3 -m venv $VENV_DIR

# Ativa o ambiente virtual (para Linux/macOS)
source $VENV_DIR/bin/activate

echo "📦 Instalando dependências: requests, beautifulsoup4, pandas..."
pip install --upgrade pip
pip install requests beautifulsoup4 pandas

echo "✅ Ambiente pronto! Para ativar novamente, use:"
echo "source $VENV_DIR/bin/activate"
