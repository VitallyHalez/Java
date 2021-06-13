package com.vs.khaletskiy.contact.repository;

import com.vs.khaletskiy.contact.model.Contact;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.UUID;

@Repository
public interface ContactRepository extends CrudRepository<Contact, UUID> {

}