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

Integer qtdDeElementosList = lista.size();
System.debug('Quantidade de elementos na lista: ' + qtdDeElementosList);

Boolean temC1 = lista.Contains(cc);
Boolean temC2 = lista.Contains(cc2);

System.debug('Contém cc: ' + temC1);
System.debug('Contém cc2: ' + temC2);

Set<String> devedores = new Set<String>();

devedores.add('João');
devedores.add('José');
devedores.add('Pedro');
devedores.add('Maria');

Integer qtdDeElementosSet = devedores.size();
System.debug('Quantidade de elementos no set: ' + qtdDeElementosSet);

devedores.add('João');
System.debug('Quantidade de elementos no set: ' + qtdDeElementosSet);

Boolean contem = devedores.contains('Pedro');
System.debug('Contém Pedro: ' + contem);

for(String d : devedores){
    System.debug(d);
}

// Set<String> devedores1 = GeradorDeDevedores.geraDevedores();

// for (String d : devedores1) {
//     System.debug(d);
// }


Map<String, Conta> dicionarios = new Map<String, Conta>();

dicionarios.put(cc.getTitular().getNome(), cc);
dicionarios.put(cc2.getTitular().getNome(), cc2);
dicionarios.put(cc3.getTitular().getNome(), cc3);
dicionarios.put(cp.getTitular().getNome(), cp);

Conta busca = dicionarios.get('Pedro');

System.debug(busca);

for(String chave : dicionarios.keySet()){
    System.debug('Chave: ' + chave + ', Valor: ' + dicionarios.get(chave));
}

String nome = 'Guilherme';
Integer idade = 42;
List<Object> listaObjetos = new List<Object>{nome, idade};
String mensagem = 'Olá {0}, a sua idade é {1}';
String mensagemFormatada = String.format(mensagem, listaObjetos); // public static String format(String stringToFormat, List<Object> formattingArguments)
System.debug(mensagemFormatada);

String texto = 'Guilherme,42,São Paulo,Brasil';
String[] partes = texto.split(',');
for(String parte : partes){
    System.debug(parte);
}

String curso = 'fn13';
String maiusculo = curso.toUpperCase();
System.debug(maiusculo);

curso = curso.replace('fn', 'fn-');
System.debug(curso);

String nomeCompleto = 'Vicente Luz';
String subNome = nomeCompleto.substring(0, 7);
System.debug(subNome);

Integer posicaoDoEspaco = nomeCompleto.indexOf(' ');
System.debug(posicaoDoEspaco);

Integer inicioDoSegundoNome = nomeCompleto.indexOf('L');
System.debug(nomeCompleto.substring(inicioDoSegundoNome));

String bancos = StringUtil.pluralize('banco');
String contas = StringUtil.pluralize('conta');

System.debug(bancos);
System.debug(contas);