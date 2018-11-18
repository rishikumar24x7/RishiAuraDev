public class Step{

   List<Step> next_Step;
   List<Step> previous_Step;
   ID classID;
   string step_Name;
   
   public void add_Step(string Step_Name){
   ORCH__Orchestration_Step__c Orch_step=new ORCH__Orchestration_Step__c();
   Orch_step.Name=Step_Name;
   insert Orch_step;
   
   
   Step next_step=new Step();
   next_step.ClassID=Orch_step.ID;
   next_step.step_Name=Step_Name;
   this.next_Step.add(next_step);
   
   
   }
}