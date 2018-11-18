public class contactaccoun { 
    public contactaccoun(ApexPages.StandardController controller) {

    }


public list<contact> lstaddcontact{get;set;}

public void addrow(){

contact c=new contact();
c.accountid=aid;
lstaddcontact.add(c);

}

public PageReference save(){
if(lstaddcontact.size()>0)
 insert lstaddcontact;
  PageReference acctPage = new PageReference('https://c.ap2.visual.force.com/apex/contact_view?id='+aid);
        acctPage.setRedirect(true);
        return acctpage;
 
}
public id delid{get;set;}
    public PageReference contactdel() {
    delete [select id from contact where id=:delid];
    system.debug(delid);

    PageReference acctPage = new PageReference('https://c.ap2.visual.force.com/apex/contact_view?id='+aid);
        acctPage.setRedirect(true);
        return acctpage;
       
    }


    public String account_name { get; set; }
    public list<contact> lstcontact {get;set;}
    public list<boolean> lstcheck {get;set;}
     public id aid{get;set;}
   
    public void lstacccont(){
    lstaddcontact =new list<contact>();
     aid=ApexPages.currentPage().getParameters().get('id');
     
     lstcontact=[select id,firstname,lastname,email,phone from contact where accountid=:aid];
      account acc=[select name,id from account where id=:aid];
      account_name =acc.name;
     
    }
    
}