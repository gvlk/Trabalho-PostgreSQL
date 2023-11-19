# Análise de Desempenho em Consultas PostgreSQL
Este projeto visa analisar e comparar a velocidade de consultas em um banco de dados PostgreSQL, utilizando índices e sem índices. O experimento é conduzido por meio da criação de tabelas, inserção de dados fictícios e realização de consultas em diferentes cenários. Código-fonte disponível em [https://github.com/gvlk/Trabalho-PostgreSQL](https://github.com/gvlk/Trabalho-PostgreSQL).

## Requisitos

- **Python**: Certifique-se de ter o Python instalado em seu ambiente. Caso não tenha, [baixe e instale a versão mais recente](https://www.python.org/downloads/).
- **Banco de Dados PostgreSQL**: Instale e configure o PostgreSQL em seu sistema. [Baixe aqui](https://www.postgresql.org/download/).

## Utilização

### 1. Configuração do Ambiente

Instale as dependências utilizando o seguinte comando:

```bash
pip install -r requirements.txt
```

### 2. Criação do Banco de Dados e Tabelas

Execute o script `src/main.py` para configurar o banco de dados e inserir dados fictícios.

```bash
python src/main.py
```

### 3. Consultas para Teste de Desempenho

Utilize as consultas definidas em `sql/query_performance_tests.sql` para avaliar o desempenho do banco de dados.

## Observações Importantes

- Os índices são criados nas colunas `Projlocal`, `Cpf`, e `Salario`.
