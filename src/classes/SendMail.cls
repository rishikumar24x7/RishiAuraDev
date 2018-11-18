global class SendMail 
{

webservice static void sendMail(string arg){
    
    
    
    Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
    PageReference pdf = Page.AddBill;
    //pdf.getParameters().put('id','a0CQ0000002Ihjj');
    pdf.setRedirect(true);
 
    Blob b = pdf.getContent();
// Create the email attachment
    Messaging.EmailFileAttachment efa = new Messaging.EmailFileAttachment();
    efa.setFileName('attachment.pdf');
    efa.setBody(b);
    String addresses;
    email.setSubject( 'subject' );
    string[] test = new String[] {'rishi.kumar@saasfocus.com'};
    email.setToAddresses( test  );
    email.setPlainTextBody(' body' );
    email.setFileAttachments(new Messaging.EmailFileAttachment[] {efa});
// Send it
    Messaging.SendEmailResult [] r =Messaging.sendEmail(new Messaging.SingleEmailMessage[] {email});
    
    }


}