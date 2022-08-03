public with sharing class ContactsController {
    @auraenabled(cacheable=true)
    public static List<Contact> getContacts() {
      return [SELECT Id,Name,Email FROM Contact where email != null];
    }
  }