using Serilog;
// See https://aka.ms/new-console-template for more information
Console.WriteLine("Hello, World!");
var logger = new LoggerConfiguration()
                .WriteTo.Console()
                .CreateLogger();
            logger.Information("Testando o consumo de mensagens com Kafka");