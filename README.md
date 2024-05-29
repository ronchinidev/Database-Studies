# Database-Studies
Repositório designado para estudos de banco de dados onde, estudos foram feitos sobre a linguagem sql utilizando diversos tipos de banco de dados relacionais (SQL) e não relacionais (No-SQL).

## Plano de estudos
### Temas estudados:
- Modelagem de dados; 
- Criação do banco de dados; 
- Artifícios da linguagem sql;
- Inserção, busca, atualização e exclusão de dados; 

### Orientação:
Plataforma: [Udemy](https://www.udemy.com/)<br>
Curso: [Bancos de Dados SQL e NoSQL do básico ao avançado](https://www.udemy.com/course/curso-de-banco-de-dados-do-basico-ao-avancado/?couponCode=ST6MT42324)<br>
Escola: [Geek University](https://www.udemy.com/user/geek-university/)

<br>
<br>

# Detalhes da modelagem de dados
A modelagem de dados é responsável por desenhar a estrutura de um **Banco de dados**, onde são definidos os fluxos, associações entre tabelas, detalhes e tipos dos campos etc.\
A modelagem de dados se inicia seguindo uma instrução que descreve em forma de texto ou imagens os processos ou entidades existentes de um sistema, e para executar os processos de modelagem é preciso usar ferramentas específicas como o **MySQL Workbench**.

### App usados:
MySQL Workbench 8.0.36 Community <br>
[dbdiagram.io](https://dbdiagram.io/)

## Criando um modelo
### Arquivo de descrição do sistema
O descritivo do sistema a ser desenvolvido pode ser fornecido ao por meio de texto ou imagem, e é fundamental saber interpretar esses documentos.

### Normalização de dados
Aplicar as formas normais deixam o banco de dados regularizado no padrão normal, onde facilita as operações, atualizações e manutenção do banco de dados.

O processo de normalização é sequencial. Isso significa que só pode ser aplicado as regras da segunda forma normal se as tabelas já se encontram na primeira forma normal.

#### Primeira Forma Normal (1FN) - Uma tabela estará na 1FN se:
- Uma entidade estará na primeira forma normal (IFN), se todos os campos forem atômicos (simples) e não multivalorados (com múltiplos valores);
- Nenhum campo da tabela pode ser multivalorado;
- Nenhum campo da tabela pode aceitar valores vazios, se isso acontecer é uma tabela problemática;

#### Segunda Forma Normal (2FN) - Uma tabela estará na 2FN se:
- Estiver na 1FN
- Ter somente atributos **(não-chave)** dependentes da chave primária

#### Terceira Forma Normal (3FN) - Uma tabela estará na 3FN se:
- Estiver na 2FN
- Nenhum atributo **(não-chave)** deve depender de outro atributo **(não-chave)**

- TESTE
