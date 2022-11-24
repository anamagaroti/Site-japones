create table Pessoa(
    idPessoa serial not null primary key,
    nomePessoa varchar not null,
    dataNascimentoPessoa varchar not null,
    enderecoPessoa varchar not null,
    cidadePessoa varchar not null,
    estadoPessoa varchar not null,
    cepPessoa varchar not null,
    celularPessoa varchar not null,
    emailPessoa varchar not null,
    senhaPessoa varchar not null
);

create table Usuario(
    idUsuario int not null primary key references Pessoa(idPessoa)
);

create table Produto(
    idProduto serial not null primary key,
    nomeProduto varchar not null,
    vlrVenda double precision not null,
    codigoBarra bigint not null,
    obsProduto varchar not null
);

create table Pedido(
    idVenda serial not null primary key,
    idProduto int not null references Produto(idProduto)
);

create or replace function cadastrarPessoa(id_pessoa int, nome_pessoa varchar, data_nascimento_pessoa varchar, endereco_pessoa varchar, cidade_pessoa varchar, estado_pessoa varchar, cep_pessoa varchar, celular_pessoa varchar, email_pessoa varchar, senha_pessoa varchar) returns int as $$
                    declare
                retornoCodigoPessoa int := 0;
                begin
                    if id_pessoa > 0 then
                        update pessoa set nomepessoa = nome_pessoa, datanascimentopessoa = data_nascimento_pessoa, enderecopessoa = endereco_pessoa, cidadepessoa = cidade_pessoa, estadopessoa = estado_pessoa, ceppessoa = cep_pessoa, celularpessoa = celular_pessoa, emailpessoa = email_pessoa, senhapessoa = senha_pessoa where idpessoa = id_pessoa returning idpessoa into retornoCodigoPessoa;
                    else
                        insert into pessoa values(DEFAULT, nome_pessoa, data_nascimento_pessoa, endereco_pessoa, cidade_pessoa, estado_pessoa, cep_pessoa, celular_pessoa, email_pessoa, senha_pessoa) returning idpessoa into retornoCodigoPessoa;
                    end if;
                return retornoCodigoPessoa;
            end;
        $$ language plpgsql;

create or replace procedure cadastrarUsuario(id_usuario int, nome_pessoa varchar, data_nascimento_pessoa varchar, endereco_pessoa varchar, cidade_pessoa varchar, estado_pessoa varchar, cep_pessoa varchar, celular_pessoa varchar, email_pessoa varchar, senha_pessoa varchar) as $$
            declare
                idUsu int := 0;
                idPe int := 0;
            begin
                select into idUsu idUsuario from usuario where idUsuario = id_usuario;
                select into idPe idpessoa from pessoa where idpessoa = id_usuario;
                if idUsu > 0 and idPe > 0 then
                    update usuario set idUsuario = (select cadastrarPessoa(id_usuario, nome_pessoa, data_nascimento_pessoa, endereco_pessoa, cidade_pessoa, estado_pessoa, cep_pessoa, celular_pessoa, email_pessoa, senha_pessoa)) where idUsuario = id_usuario;
                else
                    insert into usuario values((select cadastrarPessoa(id_usuario,  nome_pessoa, data_nascimento_pessoa, endereco_pessoa, cidade_pessoa, estado_pessoa, cep_pessoa, celular_pessoa, email_pessoa, senha_pessoa)));
                end if;
            end;
        $$ language plpgsql;

create or replace procedure cadastrarProduto(id_produto int, nome_produto varchar, vlr_produto double precision, codigo_barra bigint, obs_produto varchar) as $$
        begin
            if id_produto > 0 then
                update produto set idProduto = nomeproduto = nome_produto, vlrproduto = vlr_produto, codigobarra = codigo_barra, obsproduto = obs_produto where idproduto = id_produto;
            else
                insert into produto values(DEFAULT, nome_produto, vlr_produto, codigo_barra, obs_produto);
            end if;
        end;
$$ language plpgsql;

create or replace procedure cadastrarPedido(id_venda int, id_produto int) as $$
        begin
            if id_venda > 0 then
                update pedido set idVenda = idProduto = id_produto where idVenda = id_venda;
            else
                insert into pedido values(DEFAULT, id_produto);
            end if;
        end;
$$ language plpgsql;

create or replace view login as
select pe.emailpessoa as emaillogin, pe.senhapessoa as senhalogin
from pessoa pe inner join usuario usu on usu.idusuario = pe.idpessoa;