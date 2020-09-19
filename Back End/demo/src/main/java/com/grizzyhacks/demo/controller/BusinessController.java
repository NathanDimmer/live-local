package com.grizzyhacks.demo.controller;

import com.grizzyhacks.demo.domain.Business;
import com.grizzyhacks.demo.repo.BusinessRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/businesses")
public class BusinessController {

    @Autowired
    private BusinessRepository repository;

    @PostMapping("/addBusiness")
    public String saveBusiness(@RequestBody Business business) {
        repository.save(business);
        return "Added business with id :" + business.getId();
    }

    @GetMapping("/findAllBusinesses")
    public List<Business> getAllBusinesses() {
        return repository.findAll();
    }

    @GetMapping("/findBusinessById/{id}")
    public Optional<Business> getBusiness(@PathVariable  long id) {
        return repository.findById(id);
    }

}
