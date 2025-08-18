ContaCorrente cc = new ContaCorrente(123, new Cliente('João', '123.456.789-00', 'MG-12.345.678', 'Rua A, 123'));
ContaCorrente cc2 = new ContaCorrente(124, new Cliente('José', '321.654.987-00', 'MG-12.345.678', 'Rua A, 123'));
ContaCorrente cc3 = new ContaCorrente(125, new Cliente('Pedro', '123.456.789-00', 'MG-12.345.678', 'Rua A, 123'));
ContaPoupanca cp = new ContaPoupanca(456, new Cliente('Maria', '987.654.321-00', 'SP-12.345.678', 'Rua B, 456'));
SeguroDeVida sv = new SeguroDeVida();

try{
    cc.deposita(200);
    System.debug('Depósito realizado com sucesso');
}catch(IllegalArgumentException e){
    System.debug('Argumento Inválido');
}

try{
    cp.deposita(200);
    System.debug('Depósito realizado com sucesso');
}catch(IllegalArgumentException e){
    System.debug('Argumento Inválido');
}

try{
    cc.saca(100);
    System.debug('Dinheiro liberado');
}catch(SaldoInsuficienteException e){
    System.debug('Saldo insuficiente');
}catch(IllegalArgumentException e){
    System.debug('Não é possível sacar um valor negativo');
}

try{
    cp.saca(100);
    System.debug('Dinheiro liberado');
}catch(SaldoInsuficienteException e){
    System.debug('Saldo insuficiente');
}catch(IllegalArgumentException e){
    System.debug('Não é possível sacar um valor negativo');
}

System.debug('Imposto da conta corrente = ' + (cc.calculaTributo().setScale(2)));
ITributavel t = cc;
System.debug('Imposto da conta pela interface = ' + t.calculaTributo().setScale(2));
System.debug('Imposto do seguro = ' + sv.calculaTributo().setScale(2));
t = sv;
System.debug('Imposto do seguro pela interface = ' + t.calculaTributo().setScale(2));
System.debug('Imposto da conta poupança = ' + (cp.calculaTributo().setScale(2)));
TotalizadorDeTributos totalizador = new TotalizadorDeTributos();
try{
    totalizador.adiciona(cc);
    System.debug('Total: ' + totalizador.total.setScale(2));
    totalizador.adiciona(sv);
    System.debug('Total: ' + totalizador.total.setScale(2));
}catch(NullPointerException e){
    System.debug('Erro: Valor nulo');
}

if(cc.equals(cc2)){
    System.debug('iguais');
}else{
    System.debug('diferentes');
}


List<Conta> lista = new List<Conta>();
lista.add(cc);
lista.add(cc2);
lista.add(cc3);

for(Conta c : lista){
    System.debug(c);
}

Conta conta = lista[0];

System.debug(conta);

lista.remove(0);

for (Conta c : lista) {
    System.debug(c);
}

Integer qtdDeElementos = lista.size();

System.debug('Quantidade de elementos na lista: ' + qtdDeElementos);

Boolean temC1 = lista.Contains(cc);
Boolean temC2 = lista.Contains(cc2);

System.debug('Contém cc: ' + temC1);
System.debug('Contém cc2: ' + temC2);