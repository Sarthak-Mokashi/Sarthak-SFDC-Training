public class CustomControllerCandidate
 {

    public PageReference edit() {
        update (candidate);
        return null;
    }


    public PageReference save() {
        insert (candidate);
        return null;
    }
  

    public Candidate_Yourname__c candidate{ get; set; }
    public CustomControllerCandidate()
      {
        Id id = ApexPages.currentPage().getParameters().get('id'); 
        candidate = (id==null)?new Candidate_Yourname__c():[select Name , Salutation__c , First_Name__c , Last_Name__c , DOB__c , Email__c , Application_Date__c ,
                                                         Expected_Salary__c , Country__c , State__c  , Job__c , Status__c  from Candidate_Yourname__c];
      }
    public PageReference insertMe()
      {
         upsert(candidate);
         return null;
      }
      
}