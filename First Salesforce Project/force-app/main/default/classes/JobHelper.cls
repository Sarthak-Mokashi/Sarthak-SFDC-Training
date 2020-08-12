public class JobHelper
{
   public static void checkStatus(list<job_Yourname__c> l)
     {
        for(job_Yourname__c j:l)
          {
            if(j.Active__c)
             {
                j.addError('This Job is active and can not be deleted');
             }
          }
     }



   public static void checkJob(list<job_Yourname__c> l)
     {
        for(job_Yourname__c j:l)
          {

          }
     }
     
     
     
   public static void checkDelete(List<job_Yourname__c> l)
     {
        for(job_Yourname__c j : l)
          {
             if(j.Active__c)
               {
                  j.addError('This job is currently Active , You cannot Delete it !!');
               }
          }
     }
     
     
     
   public static void checkHired(List<job_Yourname__c> l)
     {
        for(job_Yourname__c j : l)
          {
             if(j.Hired_Applicants__c >= j.Number_of_Positions__c)
               {
                  j.Active__c = false;
               }
          }
     }



   public static void emailToManager(List<job_Yourname__c> obj)
     {
        List<Messaging.SingleEmailMessage> mails = new List<Messaging.SingleEmailMessage>();
        for(job_Yourname__c obj1 : obj)
          {
             if(obj1.Hired_Applicants__c == obj1.Number_of_Positions__c)
                {
                   Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
                   List<String> sendTo = new List<String>();
                   sendTo.add(obj1.Manager__c);
                   mail.setToAddresses(sendTo);
                   mail.setSubject('Hiring Information');
                   String body = 'All the required candidate has been hired for this job on ' + obj1.LastModifiedDate.date();
                   mail.setHtmlBody(body);
                   mails.add(mail);
                }
           }
      }
      
      
      
    public static void makeActive(List<job_Yourname__c> l)
      {
         for(job_Yourname__c j : l)
           {
              if(j.Hired_Applicants__c < j.Number_of_Positions__c && j.Active__c == false)
                {
                   j.Active__c = True;    
                }
           }
      }
}