public class leadLookupController {
      private String emailString;

      public void setEmailString(String val) {
          emailString = val;
      }

      public String getEmailString() {
           return emailString;
      }

    public Lead getLead() {
    Lead lead =[ select name ,Email ,street,city,state,postalcode from lead where email=:emailString ];
return lead;
}

public PageReference step2() {
return Page.leadLookup2;
}
}