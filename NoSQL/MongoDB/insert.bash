# cria (se nao existir) e insere dados a uma coleção
db.{collection-name}.insertOne(
    {
        "name": "Ricardo Ronchini",
        "email": "ricardo.ronchini@dev.com"
    }
)

# insere multiplos documentos de uma vez
db.{collection-name}.insertMany(
    {
        "name": "Ricardo Ronchini",
        "email": "ricardo.ronchini@dev.com"
    },
    {
        "name": "Ricardo Dev",
        "email": "ricardo.prod@dev.com"
    }
)