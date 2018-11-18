public class MapAuraComponentServer {
    @auraEnabled
    public static String getAddress(string apiName,Id recordId){
        
        Schema.SObjectType token = RecordId.getSObjectType();
        Schema.DescribeSObjectResult dr = token.getDescribe();
        string sObjectName=dr.getName();
        string queryString= 'select ID,'+ApiName+' from '+sObjectName+' where Id=:RecordId';
        sObject objSobjectRecord = Database.query(queryString);
        
        SObjectType SobjType = Schema.getGlobalDescribe().get(sObjectName);
        Map<String,Schema.SObjectField> mfields = SobjType.getDescribe().fields.getMap();
        system.debug('Address::'+objSobjectRecord.get(mfields.get(ApiName)));
        string retValue;
        try{
            system.Address objAddress=(system.Address)objSobjectRecord.get(mfields.get(ApiName));
            retValue=objAddress.getStreet()+','+objAddress.getCity()+','+objAddress.getCountry()+','+objAddress.getPostalCode();
        }
        catch(exception e){
            retValue =string.valueOf(objSobjectRecord.get(mfields.get(ApiName)));
        }
           
        system.Debug('retValue::'+retValue);
        return retValue;
    }
}