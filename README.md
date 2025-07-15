# iFood Automation Project

Projeto de automação de testes para o iFood utilizando Selenium WebDriver com Python.

## 🚀 Setup Inicial

### 1. Pré-requisitos

```bash
# Instalar Python 3.9+ (recomendado 3.11)
sudo apt update
sudo apt install python3.11 python3.11-venv python3.11-dev

# Instalar Google Chrome
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" | sudo tee /etc/apt/sources.list.d/google-chrome.list
sudo apt update
sudo apt install google-chrome-stable

# Instalar Firefox (alternativa)
sudo apt install firefox
```

### 2. Configuração do Ambiente Virtual

```bash
# Criar o ambiente virtual
python3.11 -m venv venv

# Ativar o ambiente virtual
source venv/bin/activate

# Atualizar pip
pip install --upgrade pip

# Instalar dependências de desenvolvimento
pip install -r requirements/dev.txt
```

### 3. Configuração do VS Code

```bash
# Abrir o projeto no VS Code
code .

# O VS Code vai sugerir instalar as extensões recomendadas
# Aceite todas as sugestões para melhor experiência
```

### 4. Configuração do Git (opcional)

```bash
# Configurar pre-commit hooks para qualidade do código
pre-commit install

# Configurar Git (se ainda não configurado)
git config --global user.name "Seu Nome"
git config --global user.email "seu.email@exemplo.com"
```

## 🔧 Comandos Úteis

### Executar Testes

```bash
# Executar todos os testes
pytest

# Executar testes específicos
pytest tests/e2e/test_login.py

# Executar testes com marcadores
pytest -m smoke
pytest -m "smoke and not slow"

# Executar testes em paralelo
pytest -n auto

# Executar testes com relatório HTML
pytest --html=reports/html/report.html

# Executar testes em modo headless
pytest --headless=true
```

### Qualidade do Código

```bash
# Formatar código
black src/ tests/

# Organizar imports
isort src/ tests/

# Verificar qualidade do código
flake8 src/ tests/
pylint src/ tests/

# Verificar tipos
mypy src/
```

### Debugging

```bash
# Executar teste específico com debugging
pytest tests/e2e/test_login.py::TestLogin::test_valid_login -s -v

# Executar com breakpoint
pytest tests/e2e/test_login.py --pdb

# Executar com logs detalhados
pytest tests/e2e/test_login.py --log-cli-level=DEBUG
```

## 📁 Estrutura do Projeto

```
ifood_automation/
├── src/                    # Código fonte
│   ├── pages/             # Page Objects
│   ├── utils/             # Utilitários
│   └── data/              # Dados de teste
├── tests/                 # Testes
│   ├── e2e/              # Testes end-to-end
│   └── integration/      # Testes de integração
├── reports/              # Relatórios
├── logs/                 # Arquivos de log
└── requirements/         # Dependências
```

## 🎯 Próximos Passos

1. ✅ Configurar ambiente de desenvolvimento
2. ⏳ Analisar o site do iFood
3. ⏳ Criar Page Objects
4. ⏳ Implementar testes básicos
5. ⏳ Configurar CI/CD

## 🤝 Convenções de Código

- **Nomes de classes**: PascalCase (ex: `LoginPage`)
- **Nomes de métodos**: snake_case (ex: `login_with_valid_credentials`)
- **Nomes de variáveis**: snake_case (ex: `user_email`)
- **Nomes de constantes**: UPPER_CASE (ex: `MAX_WAIT_TIME`)

## 📝 Observações

- Sempre execute `source venv/bin/activate` antes de trabalhar no projeto
- Use `pytest -m smoke` para testes rápidos durante desenvolvimento
- Logs detalhados ficam em `logs/pytest.log`
- Relatórios HTML ficam em `reports/html/report.html`
- Screenshots de falhas ficam em `reports/screenshots/`