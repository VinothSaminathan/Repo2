import { LightningElement, track, wire } from 'lwc';
import getContacts from '@salesforce/apex/ContactsController.getContacts';
export default class DataTablewithwire extends LightningElement {
@track data;
    @track coloumns = [
        { label: 'Label', fieldName: 'FirstName', type:'text'},
        { label: 'Label', fieldName: 'LasttName', type:'text'},
        { label: 'Email', fieldName: 'Email', type:'Email'},
        { label: 'Mobile', fieldName: 'MobilePhone', type:'Phone'},
    ];
    @wire (getContacts) contactRecords({error,data}){
        if(data){
            this.data = data;
            this.error= undefined;  
        } 
        else if(error){
            this.error = error;
            this.data= undefined;  
        }
    }
}