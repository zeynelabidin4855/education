public class SoqlTr01 {
    public void method01(){
        List < Account >accs= [SELECT Name, Phone FROM Account]; 
    system.debug(accs);
        for(Account w: accs){
            system.debug('Account Name: '+ w.name+ ' -Account Phone: ' +w.phone);
        }
    }

    public static void method02(){
        Map<Id, Account>accsmap = new Map<Id, Account>([SELECT Name, Phone FROM Account]);
        system.debug(accsmap);
        for(Account w: accsMap.values()){
            system.debug('Account Name: ' + w.Name);
        }
    }
      //Herbir Contact icin, Account name, Account rating, Contact name, Contact department, ve Case number'i, Case subject'i console yazdiran method olusturunuz
    public static void method03(){
        List<Contact> contacts = [SELECT Contact.Name, 
                                		 Contact.Department, 
                                		 Account.Name, 
                                		 Account.Rating, 
                                		 (SELECT Case.CaseNumber, Case.Subject 
                                 		 FROM Cases)         
                         		  FROM Contact];
        //Data'yi ana object'ten(Contact) aliniz
        for(Contact w : contacts){
            System.debug(w.Name + ' - ' + w.Department + ' - ' + w.Account.Name + ' - ' + w.Account.Rating);
        }
        
    }
}