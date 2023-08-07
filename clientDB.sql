create table IF NOT EXISTS client(
	id VARCHAR(20) not null,
	name VARCHAR(20) not null,
	passwd VARCHAR(20) not null,
	nick VARCHAR(10) not null,
	cash VARCHAR(10) not null,
	dia VARCHAR(10) not null,
	randomBox VARCHAR(10) not null
)default CHARSET=utf8;

select * from client;