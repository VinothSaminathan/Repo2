public with sharing class DataController {
    @auraenabled(cacheable= true)
    public static List<Contact> getContactList() {
        return [SELECT Id,Name FROM Contact];

    }
}