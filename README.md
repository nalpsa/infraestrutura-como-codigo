a# Projeto Infraestrutura como código - DEVOPs DIO

<a name="projeto"></a>

- [Projeto 1 - Usuários, Grupos e Permissões](#projeto1)
- [Projeto 2 - Provisionando um servidor web](#projeto2)


<a id="projeto1"></a>
# Projeto Infraestrutura como código - DEVOPs DIO

# ESCOPO:

## Criar Diretórios na raiz "/":

| publico | adm | ven | sec |
|---|---|---|---|

## Criar Grupos:

| GRP_ADM | GRP_VEN | GRP_SEC |
|---|---|---|


## Criar Usuários:

| GRP_ADM | GRP_VEN | GRP_SEC |
|---|---|---|
| Carlos | Debora | Josefina |
| Maria | Sebastiana | Amanda |
| Joao | Roberto | Rogerio |


# Definições

* Excluir diretórios, arquivos, grupos e usuários criados anteriormente;
* Todo provisionamento deve ser feito em um arquivo do tipo Bash Script;
* O dono de todos os diretórios criados será o usuário Root;
* Todos os usuários terão permissão total no diretório <strong>publico</strong>;
* Os usuários de cada grupo terão permissão total dentro do seu respectivo diretório;
* Os usuários não poderão ter permissão de leitura, escrita e execução em diretórios de departamentos que eles não pertencem;
* Subir arquivo de script criado para sua conta no GitHub.

<a id="projeto2"></a>
# Projeto Infraestrutura como código - DEVOPs DIO

## Automatizar a instalação do Apache

* Atualizar repositório apt
* Atualizar o sistema
* Baixar apache
* Baixar Unzip
* Baixar site que será hospedado no apache
* extrair conteúdo e salvar na pasta do apache

* Ao final do Script informar o IP do apache.