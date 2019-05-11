package edu.bjtu.oauth2.repository;

import  edu.bjtu.oauth2.domain.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by ahmed on 30.5.18.
 */

@Repository
public interface ProductRepository extends JpaRepository<Product,Long> {

    Product findByNameLike(String name);
    List<Product> findAll();
}
