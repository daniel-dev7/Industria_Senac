use peca_fornecedor;
select * from tb_departamento;
insert into tb_departamento (Depert_Setor, Depart_Num)
values ('Financeiro', '582'), ('Logistica', '982'), ('Saúde', '572'), ('Transposte', '854'), ('Vendas', '582'), ('Midias sociais', '6582'), ('Serviços Gerais', '8520');
-- Povoamento da tbl departamento com seus respectivos setores de trabalho

select * from tb_funcionario;
insert into tb_funcionario (Func_Nome, Func_sobrenome, Func_end, Func_tel, Func_Salario, id_Departamento)
values ('Marcos', 'Paulo', 'Lua', '+15(27)521756', 50000.00, 1), ('Eduardo', 'Lima', 'China', '+15(27)851756', 50000.00, 1), 
('Francisco', 'Alves', 'Paragobala', '+15(27)8854220', 12000.00, 2), ('Pablo', 'Wagner', 'Rio de Janeiro', '+15(27)8854220', 6000.00, 2),
('Flavia', 'Nascimento', 'Icoaracity', '+15(27)8858852', 58000.00, 2), ('Dobby', 'Elfo', 'Londres', '+15(27)8854220', 55000.00, 2),
('Olivia', 'Alves', 'Sei lá', '+15(27)8854220', 80000.00, 3), ('Zé', 'Caminhoneiro', 'Belém', '+15(27)8854220', 59000.00, 4),
('Carlinhos', 'Souza', 'Belém', '15(27)557412', 59000.00, 5), ('Patrick', 'Nascimento', 'Belém', '+15(27)8854220', 59000.00, 6), 
('Tio', 'da Limpeza', 'Belém', '+15(27)8854220', 59000.00, 7);

/*select Func_Nome from tb_funcionario;*/
-- Preenchimento da tbl de funcionários

select * from tb_project;
insert into tb_project (Proj_Horas_trab, Proj_tel)
values (2152-12-12, '857421320'), (2152-05-10, '57586126'), (2052-10-25, '11188656');

/*select * from ligacao_func_proj; -- ligaçãoo muitos para muito
insert into ligacao_func_proj (id_Funcionario, id_Project)
values (2, 1), (2, 2), (5, 3);*/

select * from tb_deposito;
insert into tb_deposito (Dep_endereco)
values ('Belém - Pa');

select * from tb_peca;
insert into tb_peca (Peca_nome, Peca_cor, Peca_peso, id_deposito)
values ('livros', 'Varias', 1, 1), ('Papel', 'Varias', 1, 1), ('Canetas', 'Transparente', 2, 1);

select * from tb_fornecedor;
insert into tb_fornecedor (fornc_Nome, fornc_Endereco)
values ('Galera do Rock distribuidora', 'Paragobala'), ('Hora de Aprender', 'Guama-city'), ('Coisa de Nerd', 'Belém');

insert into ligacao_proj_peca (id_project, id_peca) -- ligaçãoo muitos para muito
values (1, 2), (1, 3), (3,3), (2, 2);
select * from ligacao_proj_peca;

select * from tb_project_has_tb_fornecedor; -- ligaçãoo muitos para muito
insert into tb_project_has_tb_fornecedor (id_project, id_fornecedor)
values (1, 2), (2, 1), (3, 3);

-- tabelas todas preenchidas

-- Relacionando as tbl
-- funcionários 
select id_Funcionario from tb_funcionario;
select Func_Nome, Func_sobrenome, Func_tel, Func_Salario from tb_funcionario;
select Func_nome, Func_sobrenome, Depert_Setor from tb_funcionario inner join tb_departamento on id_Departamento = departamento_ID;

-- Peças
Select id_peca from tb_peca;
select Peca_nome, Peca_peso, Peca_cor from tb_peca;
select id_Project, id_peca from ligacao_proj_peca;
select Peca_nome, fornc_Nome from ligacao_proj_peca inner join id_fornecedor on id_peca = id_fornecedor;
