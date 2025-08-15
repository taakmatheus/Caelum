String titular = 'Devedor 29999';
Boolean ehDevedor = false;
List<String> devedores = new List<String>();

GeradorDeDevedores gerador = new GeradorDeDevedores();
devedores = gerador.GeraList();

for(Integer i = 0; i < 30000; i++) {
    if (devedores[i].contains(titular)) {
        ehDevedor = true;
        break;
    }
}
if (ehDevedor) {
    System.debug('O cliente ' + titular + ' é devedor.');
} else {
    System.debug('O cliente ' + titular + ' não é devedor.');
    
}