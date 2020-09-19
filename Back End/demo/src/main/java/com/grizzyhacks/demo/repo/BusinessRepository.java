package com.grizzyhacks.demo.repo;

import com.grizzyhacks.demo.domain.Business;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BusinessRepository extends MongoRepository<Business, Long> {

}
