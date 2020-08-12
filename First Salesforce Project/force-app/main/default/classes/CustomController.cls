public class CustomController
 {

    public PageReference edit() {
        update (jobVariable);
        return null;
    }


    public PageReference save() {
        insert (jobVariable);
        return null;
    }

    public PageReference deleteRecord() {
        delete (jobVariable);
        return null;
    }

    public Job_Yourname__c jobVariable { get; set; }
    public CustomController()
      {
        Id id = ApexPages.currentPage().getParameters().get('id'); 
        jobVariable = (id==null)?new Job_Yourname__c():[select  Name , Description__c , Job_Types__c , Active__c , Number_of_Positions__c , Manager__c , Salary_Offered__c ,
                                                  Required_Skills__c , Qualification_Required__c , Certification_Required__c from Job_Yourname__c];
      }
    public PageReference insertMe()
      {
         upsert(jobVariable);
         return null;
      }
      
}