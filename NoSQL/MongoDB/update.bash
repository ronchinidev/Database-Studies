# atualiza um documento
db.{collection-name}.updateOne(
    # condição
    {
        "name": "Ricardo Ronchni"
    },
    # update
    {
        $set: 
        {
            "name": "Ricardo Dev",
            "email": "ricardo.dev@email.com"
        }
    },
    # insere documento caso não exista
    {upsert: true}
)

# atualiza multiplos documentos
db.{collection-name}.updateMany(
    # condição
    {
        "name": "Ricardo Ronchni"
    },
    # atualiza todos os documentos que atendem a condição
    {
        $set: 
        {
            "name": "Ricardo Dev",
            "email": "ricardo.dev@email.com"
        }
    }
)

