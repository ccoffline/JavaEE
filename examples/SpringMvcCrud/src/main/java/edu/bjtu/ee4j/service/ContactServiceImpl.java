package edu.bjtu.ee4j.service;

import edu.bjtu.ee4j.domain.Contact;
import edu.bjtu.ee4j.repository.ContactRepository;

//import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ContactServiceImpl implements ContactService {

    private ContactRepository contactRepository;
    
    @Autowired
    public void setContactRepository(ContactRepository contactRepository) {
        this.contactRepository = contactRepository;
    }
    
    @Override
    public Iterable<Contact> getAllContacts() {
        return this.contactRepository.findAll();
    }
    
    @Override
    public Contact getContactById(Integer id) {
        return this.contactRepository.findById(id).orElse(null);
    }
    
    @Override
    public Contact saveContact(Contact contact) {
        return this.contactRepository.save(contact);
    }
    
    @Override
    public void deleteContact(Integer id) {
        this.contactRepository.deleteById(id);
    }
    
}
