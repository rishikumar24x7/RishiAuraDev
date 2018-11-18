public class LP_AddressController {

    public LP_AddressController() {
        objAddress = new LP_Address__c();
        objAddress.LP_Street_Address__c = ' ';
        objAddress.LP_City__c = ' ';
        objAddress.LP_State_Province__c = ' ';
        objAddress.LP_Zip_Postal_Code__c = ' ';


    }


    public LP_AddressController(ApexPages.StandardController controller) {
        objAddress = new LP_Address__c();
    }



    PageReference page;
    public LP_Address__c objAddress { get; Set; }


    public PageReference save() {
        if (objAddress.LP_Street_Address__c != null)
        objAddress.name = objAddress.LP_Street_Address__c;
        if (objAddress.LP_City__c != null)
        objAddress.name += objAddress.LP_City__c;
        if (objAddress.LP_State_Province__c != null)
        objAddress.name += objAddress.LP_State_Province__c;
        if (objAddress.LP_Zip_Postal_Code__c != null)
        objAddress.name += objAddress.LP_Zip_Postal_Code__c;

        insert objAddress;
        page = new PageReference('/' + objAddress.id);
        Page.setRedirect(true);
        return page;

    }
}