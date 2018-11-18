trigger createtask on video__c (after insert) {
list<Task> lNewTasks = new list<Task>();
    


   
  if(trigger.isafter)
 {
  
   for(Video__c vdo : trigger.new)
   {
    if(vdo.Talent__c!= null)
     {
         Task mytask = new Task();
          
          mytask.OwnerId ='00528000000Dm85';
         
          mytask.Status = 'Not Started';
           mytask.Subject = 'email';
    
         Insert mytask;
     }
     
      if(vdo.Marketing__c> 0)
     {
         Task mytask = new Task();
         
          mytask.OwnerId ='00528000000Dm8F';
          mytask.Priority = 'High';
          mytask.Status = 'Not Started';
           mytask.Subject = 'email';
    
         Insert mytask;
     }
     
      if(vdo.Production__c> 0)
     {
         Task mytask = new Task();
          
          mytask.OwnerId ='00528000000Dm65';
         
           mytask.Subject = 'email';
    
         Insert mytask;
     }
    
     
    else
     
    {
     vdo.adderror('please assign proper values for field');
    }
 
   }
 

 }

}