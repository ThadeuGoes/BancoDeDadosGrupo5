*TRABALHO EM GRUPO - DISCIPLINA BANCO DE DADOS - PROFESSORA MALU MONDELLI*

  Participantes:
  - Lucas Oliveira
  - Matheus Barcellos
  - Pedro Teixeira
  - Ramon Gall
  - Thadeu Goes
  - Thomas Victor

Uma plataforma deseja conectar usuários que estão interessados em comprar e
vender seus produtos. Para isso precisa de um sistema capaz de realizar o cadastro
de usuários e o controle de estoque de seus produtos. Sendo assim, a seguir são
descritos os requisitos e os dados que a plataforma julga serem necessários para o
funcionamento do sistema:
 
1. O sistema deve ser capaz de armazenar informações sobre os produtos
vendidos, sendo eles: código, nome, descrição, quantidade em estoque, data
de fabricação e valor unitário e código do usuário vendedor.

2. Um produto é fornecido por um usuário do sistema, sendo assim, faz-se
necessário o registro de informações deste usuário, como: código, nome,
endereço, telefone, nome de usuário, e-mail, cpf, data de nascimento.

3. Um usuário pode vender um ou mais produtos.

4. Ao cadastrar um produto no sistema, os usuários devem ser capazes de
associá-lo à uma categoria. Cada produto só poderá pertencer à uma
categoria.

5. Se o produto já estiver cadastrado no sistema, o usuário deverá apenas
atualizar a quantidade de itens no estoque.

6. Para cada categoria de produto, é necessário registrar: código, nome e
descrição.

7. Através do sistema, os usuários podem realizar pedidos de compra. Cada
pedido deve conter um ou mais produtos, a data em que foi realizado e por
quem foi realizado e de quem ele está comprando.

8. Um pedido pode ter mais de um item de um mesmo produto, de acordo com
a quantidade disponível em estoque entretanto apenas produtos do mesmo
vendedor.

Data de entrega: 25/08/2023, 12h

Para a entrega: colocar numa conta do github, compartilhar o link via
mensagem no discord.
1. Diagrama ER (depois da normalização) - imagem
Arquivo com os comandos:
2. SQL de criação das tabelas (DDL)
3. SQL de inserção de dados nas tabelas (pelo menos 5 registros em
cada uma) (DML)
4. Um comando SQL de atualização em algum registro em uma tabela
(DML)
5. Um comando SQL de exclusão de algum registro em uma tabela
(DML)
6. 5 SQLs de consulta
a. Pelo menos 2 com algum tipo de junção
b. Pelo menos 1 com usando count() e group by()
c. Uma consulta livre
d. 1 SQL para construção de nota fiscal
