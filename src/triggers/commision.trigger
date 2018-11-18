trigger commision on Opportunity (after insert,after update) {
set<id>setid=new set<id>();
if(trigger.isafter){
for(Opportunity a:trigger.new)
{  if(a.Amount>0 && a.stageName=='closed won')
{    comission_Partner__c cp=new comission_Partner__c();
     comission_owner__c co=new comission_owner__c();
     
     cp.Name='sakshi';
     //cp.Owner='adarsh';
     
      
      


}



}





}

}