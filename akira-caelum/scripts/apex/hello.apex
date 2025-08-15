// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

// String nome, String cpf, String rg, String endereco, Integer idade
Cliente cliente1 = new Cliente('Akira', '123.456.789-00', '12.345.678-9', 'Rua A, 123', 30);
ContaPoupanca conta = new ContaPoupanca(111, cliente1);

System.debug('Conta poupança criada: ' + conta.numero);
System.debug('Titular da conta: ' + conta.titular.nome);
System.debug('Saldo inicial: ' + conta.saldo);
conta.depositar(500);
System.debug('Saldo após depósito: ' + conta.saldo);
conta.sacar(150);
System.debug('Saldo após saque: ' + conta.saldo);
