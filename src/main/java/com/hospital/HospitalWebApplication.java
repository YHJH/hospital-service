package com.hospital;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@EnableAutoConfiguration
@SpringBootApplication
@ComponentScan({
        HospitalWebApplication.HOSPITAL_API_PACKAGE
})
public class HospitalWebApplication {
    final static String HOSPITAL_API_PACKAGE = "com.hospital";

    public static void main(String[] args) {

        SpringApplication.run(HospitalWebApplication.class, args);
    }

}