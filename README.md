# Projeto ABAP RAP para S/4HANA

Repositório dedicado ao desenvolvimento de aplicações modernas utilizando o framework RESTful Application Programming (RAP) no ambiente SAP S/4HANA.

SAP Trial & Cloud BTP

## 📂 Estrutura do Projeto

```
/src/
│
├── behavior_definitions/         # Behavior Definitions (BDEF) - Definem o comportamento das entidades
├── behavior_implementations/     # Behavior Implementations (BIMP) - Lógica dos comportamentos
├── data_definitions/             # Data Definitions (DDEF) - CDS Views e estruturas de dados
├── service_definitions/          # Service Definitions (SDEF) - Definições dos serviços OData
├── service_bindings/             # Service Bindings (SBIND) - Configurações de publicação
├── metadata_extensions/          # Metadata Extensions (MEXT) - Anotações para UI Fiori
├── control_structures/           # Includes e estruturas auxiliares
├── test_classes/                 # Testes ABAP Unit
└── documentation/                # Documentação técnica do projeto
```

**Convenções:**
- `BDEF`: Arquivos .bdef
- `BIMP`: Arquivos .bimp
- `DDEF`: Arquivos .ddef
- `SDEF`: Arquivos .sdef
- `SBIND`: Arquivos .sbinding
- `MEXT`: Arquivos .mext




## 🛠️ Tecnologias Utilizadas

- SAP ABAP for S/4HANA
- Core Data Services (CDS)
- RESTful Application Programming Model (RAP)
- OData V4
- SAP Fiori Elements
- Business Object Processing Framework (BOPF)

## ✨ Principais Funcionalidades

- Modelagem de dados com CDS Views
- Implementação de operações CRUD
- Validações e determinações de negócio
- Exposição de serviços OData V4
- Customização de interfaces Fiori via annotations

## 🚀 Como Executar

1. Importar objetos ABAP no sistema S/4HANA
2. Ativar os serviços OData via ADT e ou transação `/IWFND/MAINT_SERVICE`
3. Testar via:
   - SAP Fiori Launchpad
   - Postman/Insomnia
   - SAP Gateway Client

## 📌 Próximas Etapas

- Implementação de autorizações
- Tratamento avançado de erros
- Desenvolvimento de relatórios analíticos
- Integração com outros módulos S/4HANA

## 📧 Contato

Christopher Nicolas - [GitHub](https://github.com/ChristopherNicolasSMM) | [LinkedIn](https://www.linkedin.com/in/christophernicolassmm/)
