public class GeradorDeDevedores{
    public List <String> GeraList(){
        List<String> nomes = new List<String>();
        for(integer i = 0; i < 30000;i++){
            nomes.add('devedor '+ i);

        }
        return nomes;
    }
}