trigger JobTask on Job_Yourname__c (before insert,before delete,before update) 
{
    if(!activate__c.getInstance().activate__c)
     {
        if(trigger.isBefore && trigger.isDelete)
          {
             JobHelper.checkStatus(trigger.old);
          }

        if(trigger.isBefore && trigger.isUpdate || trigger.isInsert)
          {
             JobHelper.checkHired(trigger.new);
          }
    
        if((trigger.isInsert && trigger.isBefore) || (trigger.isUpdate && trigger.isBefore) || (trigger.isUpdate && trigger.isAfter))
          {
             JobHelper.emailToManager(trigger.new);
          }
    
        if(trigger.isBefore && trigger.isUpdate)
          {
             JobHelper.makeActive(trigger.new);
          }
     }
}