-- Lista de Atividades Práticas.
use projeto;
select * from pedido;
select * from cliente;
select * from vendedor;
select * from produto;
select * from itens_pedido;
select * from categoria;
select * from marca;

-- 6 - Listar o número do pedido, a data do pedido e nome do cliente dos pedidos com realizados no mês 08/2016.
select pedido.id as "num pedido", pedido.data_pedido as 'data do pedido', cliente.nome as 'nome do cliente' from pedido
inner join cliente on pedido.idcliente = cliente.id where data_pedido like '2016-08-%';

-- 7 - Listar o número do pedido, a data do pedido, nome do cliente e nome do vendedor dos pedidos com realizados no mês 07/2016.
select pedido.id as "num pedido", pedido.data_pedido as 'data do pedido', cliente.nome as 'nome do cliente', vendedor.nome as 'nome vendedor' from pedido
inner join cliente on pedido.idcliente = cliente.id inner join vendedor on pedido.idvendedor = vendedor.id where data_pedido like '2016-07-%';

-- 8 - Listar os nome e preço dos produtos comprados pelo cliente de id=1
select produto.nome as 'nome prod', produto.preco as 'preços do produto' from produto inner join cliente on pedido.idcliente = cliente.id inner join produto on itens_pedido.idproduto = produto.id
where cliente.id = 1; 


-- 9 - Listar o número do pedido e o nome clientes que possuem pedidos e também dos que não possuem pedidos.
select pedido.id as 'num pedido', cliente.nome from pedido inner join cliente on pedido.idcliente = cliente.id where cliente.id = pedido.id;


-- 10 - Listar o nome, preço, nome da categoria e nome da marca do produto mais caro.
select produto.nome, produto.preco, categoria.nome, marca.nome from produto inner join categoria on produto.idcategotia = categoria.id inner join marca on produto.idmarca = marca.id
 where produto.preco > 3000;


-- 11 - Listar o número do pedido, valor total e nome do cliente do pedido mais caro.
select pedido.id as 'num pedido',sum(produto.preco), cliente.nome as 'nome cliente' from pedido inner join cliente on pedido.idcliente = cliente.id inner join produto on itens_pedido.idproduto = produto.id;
select sum(preco) from produto;

-- 12 - Listar o número do pedido, valor total e nome do vendedor do pedido mais barato.
select pedido.id as 'num pedido', sum(produto.preco), vendedor.nome as 'nome vendedor' from pedido inner join vendedor on pedido.idvendedor = vendedor.id;


