public class SOQLTR02 {
    
    public static void method01(){
   AggregateResult[] result= [SELECT MIN(Numberofemployees), MAX(NumberofEmployees), AVG(NumberofEmployees) FROM Account]    ;
        System.debug(result);
        System.debug('Minimum number of Employees =' + result[0].get('expr0'));
        System.debug('Maximum number of Employees =' + result[0].get('expr1'));
        System.debug('Average number of Employees =' + result[0].get('expr2'));
    }


      //2.WAY
    
    
    public static void method02(){
   AggregateResult[] result= [SELECT MIN(Numberofemployees) min, MAX(NumberofEmployees) max, AVG(NumberofEmployees) avg FROM Account]    ;
        System.debug(result);
        System.debug('Minimum number of Employees =' + result[0].get('min'));
        System.debug('Maximum number of Employees =' + result[0].get('max'));
        System.debug('Average number of Employees =' + result[0].get('avg'));
    }
    







 //Example 2: Acoount ortalama isci sayilarini Industry'lere gore veren veren method olusturunuz.
    public static void method03(){
        AggregateResult[] result = [SELECT Industry, AVG(NumberOfEmployees) avgByIndustry FROM Account GROUP BY Industry];
         System.debug(result);
        for(AggregateResult w : result){
            System.debug('Industry:' + w.get('Industry:')+' ==> Average Number of Employees:' +  w.get('avgByIndustry'));
        }
    
    }
}