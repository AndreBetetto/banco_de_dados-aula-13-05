


1. Crie uma tabela chamada Times, cujos campos são: id_time (serial), nome, cidade, estado, data. 
Adicionar mais 2 campos que você julgue interessante, sendo pelo menos um deles numérico.
R:

create table times(
    id_time serial NOT NULL primary key,
    nome varchar (100),
    estado varchar (20),
    cidade varchar (15),
    dat numeric,
    rating_fide numeric,
    titulo varchar (10)
) 

----------------------------------------------------------------------------------------------
2. Altere o nome da coluna data (tabela Times) para o nome datafundacao.
R:

alter table times rename column data to datafundacao;
----------------------------------------------------------------------------------------------

3. Insira 5 times na tabela.
R:

insert into times (nome, estado, cidade, dat, rating_fide, titulo) values('Magnus Carlsen', 'Noruega', 'Tønsberg', '2022', '2864', 'GM')

insert into times (nome, estado, cidade, dat, rating_fide, titulo) values('hou yifan', 'China', 'Taizhou', '2022', '2650', 'GM')

insert into times (nome, estado, cidade, dat, rating_fide, titulo) values('Alireza Firouzja', 'Irã', 'Babol', '2022', '2804', 'GM')

insert into times (nome, estado, cidade, dat, rating_fide, titulo) values('Ding, Liren', 'China', 'Wenzhou', '2022', '2806', 'GM')

insert into times (nome, estado, cidade, dat, rating_fide, titulo) values('Rafael Leitão', 'Brasil', 'Maranhão', '2022', '2652', 'GM')

insert into times (nome, estado, cidade, dat, rating_fide, titulo) values('André Luiz', 'Brasil', 'SP', '2022', '1366', 'NA')

----------------------------------------------------------------------------------------------
4. Remova da tabela a coluna estado.
R:

ALTER TABLE times DROP COLUMN estado;
----------------------------------------------------------------------------------------------
5. Atualize o nome e a cidade de pelo menos 2 times.
R:

UPDATE times
SET nome = 'Sven Magnus Øen Carlsen'
WHERE nome = 'Magnus Carlsen'

UPDATE times
SET nome = 'André Luiz de Oliveira Betetto'
WHERE nome = 'André Luiz'
----------------------------------------------------------------------------------------------
6. Exclua da tabela o primeiro time inserido.
R:

DELETE FROM times WHERE id_time = 1
----------------------------------------------------------------------------------------------

select * from times