-- Atividade SQL JOINS 
use projeto;

-- 1 - Listar o nome do cliente, email e nome da cidade.
select cliente.nome as "Nome cliente", email as "Email do cliente", cidade.nome as Cidade from cliente inner join cidade on cliente.idcidade = cidade.id;


-- 2 - Listar o nome do cliente, email, nome da cidade e nome do estado apenas das cidades do estado de SP.
select cliente.nome as "Nome cliente", email as "Email do cliente", cidade.nome as Cidade, estado.nome as Estado from cliente inner join cidade on cliente.idcidade = cidade.id 
inner join estado on estado.id = estado.id where estado.id = 1;


-- 3 - Listar o nome do cliente, email, nome da cidade e nome do estado apenas das cidades que tenham a letra "ó" no nome do cliente.
select cliente.nome as "Nome cliente", email as "Email do cliente", cidade.nome as Cidade, estado.nome as Estado from cliente inner join cidade on cliente.idcidade = cidade.id 
inner join estado on estado.id = estado.id where cliente.nome like '%ó%';


-- 4 - Listar o nome do produto e nome da marca dos produtos que custem entre 1000 e 3000 reais. ps.: tambem fiz em ordem crescente.
select produto.nome as "Nome Produto", marca.nome as "Nome Marca", produto.preco as Preço from produto inner join marca on marca.id = marca.id where preco >= 1000 and preco <= 3000 
order by preco asc;


-- 5 - Listar o nome do produto, nome da marca e nome da categoria dos produtos que tenham a letra "e" no nome do produto.
select produto.nome as "Nome Produto", marca.nome as "Nome Marca", categoria.nome as "Nome Categoria" from produto inner join marca on marca.id = marca.id 
inner join categoria on categoria.id = categoria.id;




