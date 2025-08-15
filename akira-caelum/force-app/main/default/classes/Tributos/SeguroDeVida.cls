public class SeguroDeVida implements ITributavel {
    public double calculaTributos() {
        double taxaSeguro = 42.0; // Valor fixo do seguro de vida
        System.debug('Cálculo de tributos: ' + taxaSeguro);
        return taxaSeguro;
    }
}