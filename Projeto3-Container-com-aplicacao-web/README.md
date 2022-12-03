# Projeto 3

## Docker - Container com PHP/Alpine e Mysql com msitetet em wordpress

* Passos para a execução do projeto


* Clonar o repositório
  
* Acessar a pasta do repositório,
* executar o comando: chmod +x prepara.sh
* Em seguida basta executar o comando: ./prepara.sh

* Este script irá preparar todo o ambiente, baixando e instalando os programas necessários, em seguida ele irá baixar o site e o banco de dados que estão no Google Drive, após baixar ele vai extrair tudo nas suas devidas pastas, e após iniciará o compose.

Ao final da instalação, o Script irá informar o(s) IP(s) para acessar o wordpress.
Caso seja informado mais de uma IP, você conseguirá acessar o wordpress através do IP que estiver dentro da sua faixa na rede.
Para acessar o wordpress basta localizar este IP, e acrescentar no final, :8000
Ex.: 192.168.1.35:8000