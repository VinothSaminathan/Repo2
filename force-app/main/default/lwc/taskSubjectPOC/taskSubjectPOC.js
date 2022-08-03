import { LightningElement, api, wire, track } from 'lwc';
import { getSObjectValue } from '@salesforce/apex';
import GetTaskRecords from '@salesforce/apex/FetchTaskLWCController.GetTaskRecords';
import task_Object from '@salesforce/schema/Task';
import Task_Assigned_To from '@salesforce/schema/Task.OwnerId';
import Task_Status from '@salesforce/schema/Task.Status';
import Task_Priority from '@salesforce/schema/Task.Priority';
import Task_Due_Date from '@salesforce/schema/Task.ActivityDate';
import Task_Type from '@salesforce/schema/Task.Type';
import Task_Related_to_Account from '@salesforce/schema/Task.WhatId';
import Task_Subject from '@salesforce/schema/Task.Subject';
import Task_Comments from '@salesforce/schema/Task.Description';


export default class ApexWireMethodToFunction extends LightningElement {
    @api TaskRecord;
    @api recordId;
    @track tasks;
    @track error;

    taskObject = task_Object;

    @wire(GetTaskRecords, { taskId: '00T5j00000k6x6oEAA' })
    task;

    get assignedto() {
        return this.task.data ? getSObjectValue(this.task.data, Task_Assigned_To) : '';
    }
    get status() {
        return this.task.data ? getSObjectValue(this.task.data, Task_Status) : '';
    }
    get priority() {
        return this.task.data ? getSObjectValue(this.task.data, Task_Priority) : '';
    }
    get duedate() {
        return this.task.data ? getSObjectValue(this.task.data, Task_Due_Date) : '';
    }
    get type() {
        return this.task.data ? getSObjectValue(this.task.data, Task_Type) : '';
    }
    get relatedtoaccount() {
        return this.task.data ? getSObjectValue(this.task.data, Task_Related_to_Account) : '';
    }
    get subject() {
        return this.task.data ? getSObjectValue(this.task.data, Task_Subject) : '';
    }
    get comments() {
        return this.task.data ? getSObjectValue(this.task.data, Task_Comments) : '';
    }
}