public class AudiA4 implements Motor, Klima, Fren{
   
    
     public void eco(){
            system.debug('Audi A4 ekonomik motor kullanir...');
        }

    
    public void turbo(){
            system.debug('Audi A4 turbo motor kullanir...');
        }
   
   public void gas(){
           system.debug('Audi A4 sadece benzinli motor kullanir...');
       }
    public void mevsimsel(){
        system.debug('Audi A4 mevsimsel klima kullanir...');
    }
    public void digital(){
        system.debug('Audi A4 digital klima kullanir...');
    }
 public void abs(){
        system.debug('Audi A4 abs fren sistemi kullanir...');    
}
    public void secure(){
        system.debug('Audi A4 secure fren sistemi kullanir...');
}   

}