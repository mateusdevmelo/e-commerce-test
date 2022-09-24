-- inserção de dados e queries
use ecommerce;

show tables;
-- idClient, Fname, Minit, Lname, CPF, Address
insert into Client (Fname, Minit, Lname, CPF, Address)
		values('Maria','M','Silva', 123456789, 'Cidade das flores'),
			  ('Mateus','B','Melo', 987654321, 'Cidade das flores'),
              ('Ricardo','F','Silva', 789654321, 'Cidade das flores'),
              ('Julia','S','França', 456789123, 'Cidade das flores'),
              ('Roberta','G','Assis', 132654789, 'Cidade das flores'),
              ('Isabela','M','Cruz', 654789123, 'Cidade das flores');
              
	
insert into product (Pname, Classification_kids, category,  evaluation, size) values
					('Fone de ouvido',false,'Eletrônico','4',null),
                    ('Barbie Elsa',true,'Brinquedo','3',null),
                    ('Body Carters',true,'Vestimenta','5',null),
                    ('Microfone Vedo',false,'Eletrônico','4',null),
                    ('Sofá retrátil',false,'Móveis','3','3x57x80'),
                    ('Farinha',false,'Alimentos','2',null),
                    ('Stick Amazon',false,'Eletrônico','3',null);

select * from client;
select * from product;

insert into orders (idOrderClient, orderStatus, orderDescription, sendValue, PaymentCash) values
					(1, 'Cancelado', 'compra via aplicativo', null,0),
                    (2, 'Cancelado', 'compra via aplicativo',null,0),
                    (3,'Confirmado', null, null,0),
                    (4, 'Confirmado', 'compra via site', null,0);


insert into  productOrder (idPOproduct, idPOorder, poQuantity, poStatus) values
						   (1,1,2,null),
                           (2,1,1,null),
                           (3,2,1,null);

insert into productStorage (storageLocation,quantity) values
							('Rio de Janeiro',1000),
                            ('Rio de Janeiro',500),
                            ('Recife',10),
                            ('São Paulo',100),
                            ('São Paulo',10),
                            ('Recife',60);
                            
insert into storageLocation (idLproduct,idLstorage,location) values
							(1,2,'RJ'),
                            (2,6,'PE');
                            
insert into supplier (SocialName, CNPJ, contact) values
					  ('Almeida e filhos', 123456789123456,'21985474'),
                      ('Eletrônicos Silva', 853456789123457,'21985484'),
                      ('Eletrônicos Valma', 932456789123495,'21976474');

insert into productSupplier (idPsSupplier, idPsProduct, quantity) values
							(1,1,500),
                            (1,2,400),
                            (2,4,633),
                            (3,3,5),
                            (2,5,10);
                            
insert into seller (SocialName, CNPJ, CPF, location, contact) values
					('Tech eletronics', 123456789456321, null, 'Rio de Janeiro', 219946287),
					('botique Durgas', null, 123456783, 'Rio de Janeiro', 219946298),
                    ('Kids World', 123456789454485, null, 'São Paulo', 219946569);
			
insert into productSeller (idPseller, idPproduct, prodQuantity) values
							(1,6,80),
                            (2,7,10);

select count(*) from client;