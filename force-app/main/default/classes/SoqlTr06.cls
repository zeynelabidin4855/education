public class SoqlTr06 {
    //1)Database'e bir tane Lead Object'i insert ediniz
    //2)Insert ettiginiz Lead Object'inin LastName'ini Xyz yapiniz
    public static void method01(){
        
        Lead obj = new Lead(FirstName='Ali', LastName='Can', Company='TechPro Education', Status='Open');
        Insert obj;
        
        //Note 1: Update, Delete, Undelete operasyonlari kritik operasyonlardir. Bu operasyonlar 'Id' olamadan yapilamazlar
        List<Lead> leads = [SELECT Id FROM Lead WHERE Firstname='Ali' AND Lastname='Can' AND Company='TechPro Education'];
        
        for(Lead w : leads){
            w.Lastname = 'Xyz';
        }
        
        Update leads;//Database.update(leads);
        
    }
}