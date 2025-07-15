# Estrutura do projeto seguindo padrões de mercado
ifood_automation/
├── .vscode/                    # Configurações específicas do VS Code
│   ├── settings.json          # Configurações do workspace
│   ├── launch.json           # Configurações de debug
│   └── extensions.json       # Extensões recomendadas
├── src/                       # Código fonte principal
│   ├── __init__.py
│   ├── pages/                 # Page Object Model
│   │   ├── __init__.py
│   │   ├── base_page.py      # Classe base para todas as páginas
│   │   └── components/        # Componentes reutilizáveis
│   │       └── __init__.py
│   ├── utils/                 # Utilitários e helpers
│   │   ├── __init__.py
│   │   ├── driver_factory.py # Factory para criação de drivers
│   │   ├── config.py         # Configurações do projeto
│   │   └── helpers.py        # Funções auxiliares
│   └── data/                  # Dados de teste
│       ├── __init__.py
│       └── test_data.py      # Massa de dados para testes
├── tests/                     # Testes organizados por funcionalidade
│   ├── __init__.py
│   ├── conftest.py           # Configurações globais do pytest
│   ├── integration/          # Testes de integração
│   │   └── __init__.py
│   └── e2e/                  # Testes end-to-end
│       └── __init__.py
├── reports/                   # Relatórios de execução
│   ├── screenshots/          # Screenshots de falhas
│   └── html/                 # Relatórios HTML
├── logs/                      # Logs de execução
├── requirements/              # Dependências separadas por ambiente
│   ├── base.txt              # Dependências base
│   ├── dev.txt               # Dependências de desenvolvimento
│   └── prod.txt              # Dependências de produção
├── .gitignore                 # Arquivos a serem ignorados pelo Git
├── README.md                  # Documentação do projeto
├── pytest.ini                # Configurações do pytest
└── setup.py                   # Configuração do pacote Python