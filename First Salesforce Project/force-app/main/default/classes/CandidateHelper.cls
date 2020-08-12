public class CandidateHelper
{
   public static void checkSalary(list<candidate_Yourname__c> l)
     {
        for(candidate_yourname__c c:l)
          {
             if(c.Expected_Salary__c == Null)
               c.addError('Please specify the expected salary!!');
          }
     }


   public static void checkJob(List<Candidate_Yourname__c> l)
     {
        for(Candidate_Yourname__c c: l)
          {
             ID JobID = c.Job__c;
             Job_Yourname__c  j = [Select Active__c from Job_Yourname__c Where ID = :JobID];
             if(!j.Active__c)
               {
                 c.addError('This job is not active. You can not apply for this job.');
               }
          }
     }


   public static void checkDate(list<Candidate_Yourname__c> l)
     {
        for(candidate_Yourname__c c:l)
          {
             if(c.Application_Date__c != c.CreatedDate.date())
               {
                 Candidate_Yourname__c can =[Select Application_Date__c,CreatedDate from Candidate_Yourname__c Where ID =: c.id];
                 can.Application_Date__c = can.CreatedDate.date();
                 Update can;
               }
          }
     }
}