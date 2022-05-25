public class SoslTr01 {
    
    public static  void method01(){
        List<List<sobject>> result = [FIND 'United'IN NAME FIELDS RETURNING Account(Name), Contact(FirstName, LastName)];
        system.debug(result);
    }
 public static void method02(){
        List<List<sObject>> result = [FIND 'Un*' IN NAME FIELDS RETURNING Account(Name), Contact(Firstname, Lastname)];
        System.debug(result);
    }


}