public with sharing class AccountAddressTriggerHandler {
	
	public static void handleBeforeIsert(){
		
	}
	
	public static void handleBeforeUpdate(){
		
	}
    //testing for demo
	//test vs code
    private void setShippingPostalCode(List<Account> lstAccount){
    	try{
    		if(lstAccount != null && !lstAccount.isEmpty()){
		    	for(Account objAccount : lstAccount){    		
		    		if(objAccount.Match_Billing_Address__c == TRUE){
		    			objAccount.ShippingPostalCode = objAccount.BillingPostalCode;
		    		}
		    	}
	    	}
    	}
    	catch(Exception e){
    		System.debug('###'+e);
    	}    	
    }    
}