import psycopg2
from faker import Faker


def database_setup(dbname: str, user: str, password: str, host: str, port: str) -> None:
    # Conectar ao banco de dados
    conn = psycopg2.connect(
        dbname=dbname,
        user=user,
        password=password,
        host=host,
        port=port
    )

    # Criar um cursor
    cursor = conn.cursor()

    # Criar tabelas
    with open('sql/create_tables.sql', 'r') as file:
        sql_query = file.read()
    cursor.execute(sql_query)

    # Inserir dados fictícios usando a biblioteca Faker
    fake = Faker()

    # Criar conjuntos para armazenar valores exclusivos
    projnumeros_set = set(range(1, 2001))
    dnumeros_set = set(range(1, 51))
    cpfs_set = set(range(1, 10001))

    # Inserir dados na tabela PROJETO
    for _ in range(2000):
        projnumero = projnumeros_set.pop()
        projlocal = fake.random_int(min=1, max=200)
        dnum = fake.random_int(min=1, max=50)

        cursor.execute("INSERT INTO PROJETO (Projnumero, Projlocal, Dnum) VALUES (%s, %s, %s)",
                       (projnumero, projlocal, dnum))

    print("Tabela PROJETO preenchida")

    # Inserir dados na tabela DEPARTAMENTO
    for _ in range(50):
        dnumero = dnumeros_set.pop()
        cpf_ger = fake.random_int(min=1, max=50)

        cursor.execute("INSERT INTO DEPARTAMENTO (Dnumero, Cpf_ger) VALUES (%s, %s)", (dnumero, cpf_ger))

    print("Tabela DEPARTAMENTO preenchida")

    # Inserir dados na tabela FUNCIONARIO
    for _ in range(10000):
        cpf = cpfs_set.pop()
        dnr = fake.random_int(min=1, max=50)
        salario = fake.random_int(min=1, max=500)

        cursor.execute("INSERT INTO FUNCIONARIO (Cpf, Dnr, Salario) VALUES (%s, %s, %s)", (cpf, dnr, salario))

    print("Tabela FUNCIONARIO preenchida")

    # Salvar as alterações
    conn.commit()

    # Fechar o cursor e a conexão
    cursor.close()
    conn.close()
