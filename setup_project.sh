#!/bin/bash

# Script para criar a estrutura completa do projeto iFood Automation
# Execute: chmod +x setup_project.sh && ./setup_project.sh

echo "🚀 Criando estrutura do projeto iFood Automation..."

# Criar diretório principal do projeto
mkdir -p ifood_automation
cd ifood_automation

echo "📁 Criando estrutura de diretórios..."

# Criar estrutura de diretórios
mkdir -p .vscode
mkdir -p src/pages/components
mkdir -p src/utils
mkdir -p src/data
mkdir -p tests/e2e
mkdir -p tests/integration
mkdir -p reports/html
mkdir -p reports/screenshots
mkdir -p logs
mkdir -p requirements

echo "📄 Criando arquivos de configuração do VS Code..."

# Arquivos de configuração do VS Code
touch .vscode/settings.json
touch .vscode/launch.json
touch .vscode/extensions.json

echo "📄 Criando arquivos Python principais..."

# Arquivos __init__.py para tornar diretórios em pacotes Python
touch src/__init__.py
touch src/pages/__init__.py
touch src/pages/components/__init__.py
touch src/utils/__init__.py
touch src/data/__init__.py
touch tests/__init__.py
touch tests/e2e/__init__.py
touch tests/integration/__init__.py

# Arquivos principais do src
touch src/pages/base_page.py
touch src/utils/driver_factory.py
touch src/utils/config.py
touch src/utils/helpers.py
touch src/data/test_data.py

# Arquivos de teste
touch tests/conftest.py

echo "📄 Criando arquivos de configuração do projeto..."

# Arquivos de configuração
touch requirements/base.txt
touch requirements/dev.txt
touch requirements/prod.txt
touch pytest.ini
touch setup.py
touch README.md
touch .gitignore

echo "📄 Criando arquivos adicionais..."

# Arquivos adicionais importantes
touch .env.example
touch .pre-commit-config.yaml
touch pyproject.toml
touch Makefile

echo "📁 Estrutura de diretórios criada:"
echo ""
tree -a -I 'venv|.git|__pycache__|.pytest_cache'

echo ""
echo "✅ Estrutura do projeto criada com sucesso!"
echo ""
echo "🔧 Próximos passos:"
echo "1. cd ifood_automation"
echo "2. python3 -m venv venv"
echo "3. source venv/bin/activate"
echo "4. pip install --upgrade pip"
echo "5. Copie o conteúdo dos arquivos de configuração"
echo "6. pip install -r requirements/dev.txt"
echo "7. code ."
echo ""