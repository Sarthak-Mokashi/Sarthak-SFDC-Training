@isTest
public class TestJobTrigger{
    
  @isTest 
    static void myTest(){
       Job_Yourname__c obj = new Job_Yourname__c();
       
       obj.Number_of_Positions__c = 1;
       obj.Active__c = true;
       obj.Required_Skills__c = 'People Skills';
       obj.Qualification_Required__c = 'Bcom';
       obj.Certification_Required__c = 'MPM (Master Project Manager)';
       obj.Manager__c = 'mj@gmail.com';
       
       insert obj;
       delete obj;
   }
}