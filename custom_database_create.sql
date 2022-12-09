-- Create the test database
CREATE DATABASE testDB;
GO
USE testDB;
EXEC sys.sp_cdc_enable_db;

CREATE TABLE Clientes (
  id INTEGER IDENTITY(1,1) NOT NULL PRIMARY KEY,
  PrimeiroNome VARCHAR(255) NOT NULL,
  SegundoNome VARCHAR(255) NOT NULL,
  Email VARCHAR(255),
  DataNascimento datetime2 
);

EXEC sys.sp_cdc_enable_table @source_schema = 'dbo', @source_name = 'clientes', @role_name = NULL, @supports_net_changes = 0;
GO

INSERT INTO CLIENTES (PrimeiroNome, SegundoNome, Email, DataNascimento) VALUES ('Eduardo', 'Aguiar', 'me@tioaguiar.com.br', '04/03/1978')
