package com.example.jobpostservice.common;

import org.modelmapper.ModelMapper;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;



@Configuration
public class BeanConfigurer {
    @Bean
    ModelMapper modelMapper() {
        return new ModelMapper();
    }

}
