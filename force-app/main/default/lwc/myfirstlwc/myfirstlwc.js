import { LightningElement, track } from 'lwc';

export default class Myfirstlwc extends LightningElement {
    @track firstname;
    @track showfirstname;
        setfirstname (event) {
        this.firstname = event.target.value;
    }
    handclick () {
        this.showfirstname= true;
    }
}