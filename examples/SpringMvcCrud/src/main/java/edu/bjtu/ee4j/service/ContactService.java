package edu.bjtu.ee4j.service;

import java.util.Optional;

import edu.bjtu.ee4j.domain.Contact;

public interface ContactService {
    Iterable<Contact> getAllContacts();
    Contact getContactById(Integer id);
    Contact saveContact(Contact contact);
    void deleteContact(Integer id);
}
