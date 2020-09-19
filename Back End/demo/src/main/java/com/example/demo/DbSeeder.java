package com.example.demo;

import com.example.demo.domain.Business;
import com.example.demo.repository.BusinessRepository;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

@Component
public class DbSeeder implements CommandLineRunner {

    private BusinessRepository businessRepository;

    public DbSeeder(BusinessRepository businessRepository) {
        this.businessRepository = businessRepository;
    }

    @Override
    public void run(String... args) throws Exception {
        Business firstBusiness = new Business(
                "Oscar",
                "Adams, MN"
        );
        Business secondBusiness = new Business(
                "Oscar",
                "Morocco, IN"
        );

        this.businessRepository.deleteAll();

        this.businessRepository.save(firstBusiness);
        this.businessRepository.save(secondBusiness);
    }
}
