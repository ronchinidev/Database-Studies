# mostra todas as coleções de uma base de dados
db.{collection-name}.find()

# busca com condições | retorna todos os documentos que atendem a condição
db.{collection-name}.find(
    {
        "name": "Ricardo Ronchini"
    }
)

# usando operador lógico OR
db.{collection-name}.find(
	{
		$or: [
			{
                "nome": "Ricardo Dev"
            },
			{
                "nome": "Ricardo Developer"
            }
		]
	}
)

# usando OR com AND
db.{collection-name}.find(
	{
		$or: [
			{
                "nome": "Ricardo Dev"
            },
			{
                "nome": "Ricardo Developer"
            }
		],
        "email": "developer@test.com"
	}
)

# retornando o primeiro documento encontrado
db.{collection-name}.findOne()


## obtendo documentos com recursos de agregação

# obtem documentos que o unit_price é maior que 8
db.{collection-name}.aggregate(
    [
        {
            $match: {
                unit_price: {$gt: 8}
            }
        }
    ] 
)

# agrupa documentos por brand, e soma todos os unit_ptice
db.{collection-name}.aggregate(
    [
        {
            $group: { 
                _id: "$brand", 
                unit_price: { 
                    $sum: "$unit_price"
                }
            }
        }
    ]
)