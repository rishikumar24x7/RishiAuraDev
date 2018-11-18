trigger triggerOnCoordinare on Coordinate__c (after insert,before insert) {
    
    if(trigger.isBefore && trigger.isInsert){
    for (integer i=0 ;i<trigger.new.size();i++)
            trigger.new[i].Name=String.valueOf(i+1);
    }
    
    if(trigger.isafter && trigger.isInsert){
        if(trigger.new.size()>=2){
            list <Euclidean_Calculation__c> EC_List =new  list <Euclidean_Calculation__c>();
            for (integer i=0 ;i<trigger.new.size();i++){
                
                for (integer j=i+1 ;j<trigger.new.size();j++){
                    
                    Euclidean_Calculation__c EC= new Euclidean_Calculation__c ();
                    EC.Name='D'+String.valueOf(i+1)+String.valueOf(j+1);
                    EC.Cordinate1__c=trigger.new[i].ID;
                    EC.Cordinate2__c=trigger.new[j].ID;
                    EC_List.add(EC);
                }
             }
             
             insert EC_List;
          }  
          
          else{
          
          
          
          }
     }

}