package edu.bjtu.ee4j.repository;

import edu.bjtu.ee4j.domain.Contact;
import org.springframework.data.repository.CrudRepository;

public interface ContactRepository extends CrudRepository<Contact, Integer>{
    
}
