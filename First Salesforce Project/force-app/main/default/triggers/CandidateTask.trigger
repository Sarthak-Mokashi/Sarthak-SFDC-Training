trigger CandidateTask on Candidate_Yourname__c (before insert, before update, before delete,after insert) {
    
    if(trigger.isInsert && trigger.isBefore)
    {
        CandidateHelper.checkSalary(trigger.new);
    }

    
    if(trigger.isInsert && trigger.isBefore)
    {
        CandidateHelper.checkJob(trigger.new);
        
    }

    
    if(trigger.isInsert && trigger.isAfter)
    {
        CandidateHelper.checkDate(trigger.new);
        
    }
    
}