public class Jobs 
{
         List<Job_Yourname__c> job =[select Name , Description__c , Job_Types__c , Active__c , Expires_On__c , Number_of_Positions__c ,
                                      Salary_Offered__c , Required_Skills__c , Qualification_Required__c , Certification_Required__c from Job_Yourname__c];

         public List<Job_Yourname__c> getjob()
           {
             return job;
           }
           
         public List<sObject> records{get;set;}

         public List<String> fields{get;set;}

         public Jobs()
           {
              records= [select Name , Salutation__c , First_Name__c , Last_Name__c , DOB__c , Email__c , Application_Date__c , Expected_Salary__c ,
                         Country__c , State__c  , Job__c , Status__c  from Candidate_Yourname__c];

              fields = new List<String>{'Name' , 'Salutation__c' , 'First_Name__c' , 'Last_Name__c' , 'DOB__c' , 'Email__c' , 'Application_Date__c' ,
                                         'Expected_Salary__c' , 'Country__c' , 'State__c', 'Job__c' , 'Status__c'};

           }
}