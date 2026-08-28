# 📊 UC2 — Data Analytics

### 🐍 Python · 🗄️ SQL · 📈 Power BI · 📓 Jupyter Notebook

Repositório de estudos e projetos práticos desenvolvidos durante minha formação em **Análise de Dados**, com foco em tratamento, exploração, consulta e visualização de dados.

O projeto reúne diferentes abordagens de análise utilizando **Python, Pandas, SQL e Power BI**, aplicadas a conjuntos de dados de vendas, segurança pública e outros cenários de análise.

---

## 📑 Índice

- [Sobre o projeto](#-sobre-o-projeto)
- [Pré-requisitos](#-pré-requisitos)
- [Instalação](#-instalação)
- [Variáveis de ambiente](#-variáveis-de-ambiente)
- [Testes](#-testes)
- [Power BI](#-power-bi)
- [Objetivo](#-objetivo)
- [Autor](#-autor)

---

## 📌 Sobre o projeto

O **UC2 — Data Analytics** reúne exercícios e projetos desenvolvidos para colocar em prática conceitos fundamentais de análise de dados.

O repositório trabalha com diferentes formatos de dados, incluindo **CSV, XLSX e bancos relacionais**, utilizando ferramentas específicas para cada etapa do processo.

### Fluxo de análise

```text
📥 Dados
   ↓
🧹 Tratamento
   ↓
🔎 Exploração
   ↓
🧮 Análise
   ↓
📊 Visualização
   ↓
📈 Interpretação
```

Os projetos incluem análises desenvolvidas em notebooks Python, consultas SQL e visualizações criadas no Power BI.

---

## ⚙️ Funcionalidades

- Manipulação e tratamento de dados com **Python e Pandas**
- Análise exploratória de dados (EDA)
- Leitura de arquivos **CSV e Excel**
- Criação e relacionamento de tabelas SQL
- Consultas utilizando filtros, agrupamentos e funções de agregação
- Análise de dados de vendas
- Análise de indicadores de segurança pública
- Criação de gráficos e visualizações
- Desenvolvimento de visualizações no **Power BI**
- Organização de análises em notebooks Jupyter

---

# 🛠️ Tecnologias utilizadas

<div align="center">

[![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)](https://www.python.org/)
[![Pandas](https://img.shields.io/badge/Pandas-150458?style=for-the-badge&logo=pandas&logoColor=white)](https://pandas.pydata.org/)
[![Jupyter](https://img.shields.io/badge/Jupyter-F37626?style=for-the-badge&logo=jupyter&logoColor=white)](https://jupyter.org/)
[![SQL](https://img.shields.io/badge/SQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)](https://www.mysql.com/)
[![Power BI](https://img.shields.io/badge/Power%20BI-F2C811?style=for-the-badge&logo=Power-BI&logoColor=black)](https://powerbi.microsoft.com/)

</div>

### Python

Utilizado nos notebooks para manipulação, tratamento e análise de dados.

### Pandas

Utilizado para trabalhar com DataFrames e realizar operações de tratamento, transformação e agregação.

### Jupyter Notebook

Ambiente utilizado para desenvolver e documentar as análises em Python.

### SQL

Utilizado para criação de bancos de dados, relacionamento entre tabelas e consultas analíticas.

### Power BI

Utilizado para criação de visualizações e apresentação gráfica dos dados.

---

# 📋 Pré-requisitos

Antes de executar os projetos Python, é necessário ter instalado:

- **Python 3**
- **pip**
- **Jupyter Notebook ou JupyterLab**

Para os projetos SQL:

- **MySQL** ou outro ambiente compatível com os comandos utilizados nos scripts.

Para os arquivos `.pbix`:

- **Microsoft Power BI Desktop**

---

# 🚀 Instalação

## 1. Clone o repositório

```bash
git clone https://github.com/danicarvalho-1995/UC2.git
```

## 2. Acesse o diretório

```bash
cd UC2
```

## 3. Crie um ambiente virtual

### Windows

```bash
python -m venv venv
venv\Scripts\activate
```

### Linux / macOS

```bash
python3 -m venv venv
source venv/bin/activate
```

## 4. Instale as dependências

O projeto possui um arquivo `requeriments.txt` com as dependências utilizadas nos notebooks.

```bash
pip install -r requeriments.txt
```

---

# ▶️ Execução

## Python / Jupyter Notebook

Após instalar as dependências, execute:

```bash
jupyter notebook
```

Ou:

```bash
jupyter lab
```

Depois, abra um dos arquivos `.ipynb` disponíveis no repositório.

### Principais notebooks

| Notebook | Conteúdo |
|---|---|
| `Aula_UC2_1(1).ipynb` | Exercícios de análise de dados |
| `ISP_Dados.ipynb` | Análise de dados de segurança pública |
| `Mini_Projeto_INP.ipynb` | Projeto prático de análise |
| `NaraShop.ipynb` | Análise de dados relacionados a vendas |

---

# 🗄️ SQL

O projeto possui dois scripts principais:

### `UC2.sql`

Cria o banco de dados **NaraMarket**, com tabelas de:

- Lojas
- Produtos
- Vendas

O script utiliza **chaves primárias e estrangeiras** para relacionar as tabelas e contém consultas para filtros, ordenação, análise temporal, agrupamentos e funções de agregação.

Exemplo:

```sql
SELECT id_produto, SUM(valor) AS total_vendas
FROM vendas
GROUP BY id_produto
ORDER BY total_vendas DESC;
```

### `Naranerd.sql`

Projeto SQL baseado em dados de:

- Clientes
- Vendedores
- Produtos
- Vendas

Os arquivos CSV correspondentes estão disponíveis no próprio repositório.

---

# 📈 Power BI

O repositório contém arquivos relacionados à visualização de dados:

```text
Gráfico.pbix
GRÁFICOS POWER BI.svg
```

O arquivo `.pbix` pode ser aberto utilizando o **Power BI Desktop**.

---

# 🔐 Variáveis de ambiente

Atualmente, o projeto **não necessita de variáveis de ambiente**.

Não são utilizadas:

- API Keys
- Tokens
- Senhas
- Credenciais de banco de dados
- Chaves de serviços externos

Portanto, não é necessário criar um arquivo `.env` para executar os notebooks disponíveis.

### Exemplo

Caso futuramente sejam adicionadas credenciais ou configurações externas, a estrutura recomendada será:

```env
DATABASE_HOST=
DATABASE_USER=
DATABASE_PASSWORD=
DATABASE_NAME=
```

> **Importante:** arquivos `.env` contendo credenciais reais não devem ser enviados para o GitHub.

---

# 🧪 Testes

Este repositório **não possui uma suíte automatizada de testes**, pois seu objetivo principal é documentar exercícios e projetos de **Análise de Dados** desenvolvidos em notebooks, SQL e Power BI.

A validação dos projetos ocorre por meio da:

- Execução dos notebooks;
- Verificação dos resultados das consultas SQL;
- Conferência dos DataFrames gerados;
- Validação das visualizações e gráficos;
- Verificação dos resultados obtidos durante as análises.

---

# 📊 Competências demonstradas

### 🐍 Python

- Manipulação de DataFrames
- Pandas
- Tratamento de dados
- Análise exploratória
- Agregação de dados
- Jupyter Notebook

### 🗄️ SQL

- `CREATE DATABASE`
- `CREATE TABLE`
- `PRIMARY KEY`
- `FOREIGN KEY`
- `SELECT`
- `WHERE`
- `JOIN`
- `GROUP BY`
- `HAVING`
- `ORDER BY`
- `LIMIT`
- Funções de agregação

### 📈 Power BI

- Visualização de dados
- Construção de gráficos
- Apresentação de indicadores
- Desenvolvimento de dashboards

---

# 🎯 Objetivo

Este repositório faz parte da minha **transição de carreira para a área de Análise de Dados**.

O objetivo é documentar a aplicação prática dos conhecimentos adquiridos em:

**Python → SQL → Power BI → Análise de Dados**

Novos projetos e análises serão adicionados conforme o avanço da formação.

---

# 👤 Autor

## Daniel de Carvalho Nunes

**Data Analytics | Python | SQL | Power BI**

[![GitHub](https://img.shields.io/badge/GitHub-danicarvalho--1995-181717?style=for-the-badge&logo=github)](https://github.com/danicarvalho-1995)

---

<div align="center">

**📊 Data Analytics • Python • SQL • Power BI**

</div>
