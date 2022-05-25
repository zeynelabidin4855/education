public class Students {

    public string name ='Ali Can ';
    private integer age= 13;
    private boolean successful=true;
   
    public string getname(){
        return name;
    }
     public integer getAge(){
            return age;   
    }
    public boolean getSuccessful(){
        return successful;
    }
    
    
    public void setName(String name){
        this.name=name;
    
    }

    public void setAge(integer age){
        this.age=age;
    }
    public void setSuccessful(boolean successful){
        this.successful=successful;
        
    }
}