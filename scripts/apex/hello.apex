// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents


Cliente cliente = new Cliente('Fernando');

ContaCorrente conta = new ContaCorrente(cliente);

conta.deposita(200.00d);

System.debug(conta.saldo);

conta.saca(50.00d);

TotalizadorDeTributos total = new TotalizadorDeTributos();

total.acumula(conta);

System.debug(total.Total);

Integer proximaConta = ContaCorrente.proximaConta();

System.debug(proximaConta);

Cliente cliente2 = new Cliente('Jessica');

ContaPoupanca conta2 = new ContaPoupanca(cliente2);

System.debug(conta2.numero);

try{
    //conta2.deposita(-1.0d);
    conta2.saca(500.00d);
}
catch(System.IllegalArgumentException e){
    System.debug(e.getMessage());
}
catch(SaldoInsuficienteException e){
    System.debug(e.getMessage());
}