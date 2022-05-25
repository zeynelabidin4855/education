public class SoqlTr05 {
    public static void method01(){
        //Sadece 1 tane insert yaptik
        Account acc1= new Account( Name='Test01', Phone='12345678900' );
    acc1.Rating= 'Hot';
    insert acc1;
       //Database.insert(acc1) ve Database.insert(acc1, true) ‘Insert acc1’ ile ayni anlama gelir yani; kismi basariya musaade etmez. Ya hep ya hic
        //Database.insert(acc1, false) kismi basariya musaade eder. 
        
        //Coklu insert yapalim
        
        
        list<Account> acclist = new List<Account>();
        
        Account Acc2 = new Account(Name='Test02');
        Account Acc3 = new Account(Name='Test03');
        Account Acc4 = new Account(Name='Test04');
        Account Acc5 = new Account(Name='Test05');
        
        acclist.add(acc2);
        acclist.add(acc3);
        acclist.add(acc4);
        acclist.add(acc5);
        Database.insert(acclist, true);
    }
}