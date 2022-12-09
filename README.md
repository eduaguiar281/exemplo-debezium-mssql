Esse repositório está apenas para consulta e estudos mais objetivo sobre o Debezium.

Para ir a fundo consulte a documentação em https://debezium.io/documentation/reference/stable/index.html

Pré-requisitos: Instalar Docker Desktop, postman e Sql Management Studio.

Passo 1: 
  Inicie os containers do Zookeper, Kafka, SqlServer e Kafka-connect com o "docker-compose-up.bat"
  
Passo 2: 
   Verifique se os containers iniciaram normalmente, usando o Docker Desktop

Passo 3:
   Verifique se Kafka-connect foi inicializado acessando http://localhost:8083/ .
   Repare que irá aparecer a versão do Kafka-connect

Passo 4:
   Crie o banco de dados usando o Sql Management Studio usando o arquivo "custom_database_create.sql"
   Para conectar no banco use o usuário sa e a senha nas variáveis de ambiente do container do docker.
   
Passo 5: 
   Crie o conector usando o curl ou o postman. O Json com as configurações do conector está no arquivo "sqlserver-connector.json"
   curl -i -X POST -H "Accept:application/json" -H  "Content-Type:application/json" http://localhost:8083/connectors/ -d @sqlserver-connector.json
   
Passo 6: 
   Monitore as alterações ocorridas usando "listner.bat" ou o projeto da pasta "Consumer" usando o "start-consumer.bat" 
