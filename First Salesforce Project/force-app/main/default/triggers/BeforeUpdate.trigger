trigger BeforeUpdate on Candidate_Yourname__c (before insert) 
{
    Candidate_Yourname__c candidate = Trigger.new[0];
    candidate.Last_Name__c = 'Mokashi';
}