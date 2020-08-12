trigger MyTrigger on Candidate_Yourname__c (before insert , before update, before delete,after insert,after update, after delete, after undelete) {

    If (Trigger.isBefore)
      {
        If(Trigger.isInsert)
          {
              System.debug('I am inside Before Insert !!');
          }
        else if(Trigger.isUpdate)
          {
              System.debug('I am inside Before Update !!');
          }
        else if(Trigger.isDelete)
          {
              System.debug('I am inside Before Delete !!');
          }
          
        System.debug('Before Events are as follows:');
        System.debug('Trigger new'+Trigger.new);
        System.debug('Trigger old'+Trigger.old);
        System.debug('Trigger oldmap'+Trigger.oldMap);
        System.debug('Trigger newmap'+Trigger.newMap);
      }
   else if(Trigger.isAfter)
      {
        If(Trigger.isInsert)
          {
             System.debug('I am inside after insert');
          }
        else if(Trigger.isUpdate)
          {
             System.debug('I am inside after update');
          }
        else if(Trigger.isDelete)
          {
             System.debug('I am inside after delete');
          }
          
        System.debug('after events');
        System.debug('Trigger new'+Trigger.new);
        System.debug('Trigger old'+Trigger.old);
        System.debug('Trigger oldmap'+Trigger.oldMap);
        System.debug('Trigger Newmap'+Trigger.newMap);
     }
}