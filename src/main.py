# Guilherme Azambuja - 149429
# https://github.com/gvlk/Trabalho-PostgreSQL
# Leia o README.md

from database_setup import database_setup

DBNAME = "EMPRESA"
USER = "postgres"
PASSWORD = "root"
HOST = "localhost"
PORT = "5432"


def main() -> None:
    database_setup(DBNAME, USER, PASSWORD, HOST, PORT)


if __name__ == '__main__':
    main()
