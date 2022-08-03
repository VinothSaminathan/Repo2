public with sharing class FetchTaskLWCController {
    @AuraEnabled(cacheable=true)
    public static Task GetTaskRecords(Id taskId) 
    {
        Task task = [SELECT Id, OwnerId, Status, Priority, ActivityDate, Type, WhatId, Subject, Description FROM Task WHERE Id =: taskId LIMIT 1];
        System.debug('task'+task);
        return task;
    }
}