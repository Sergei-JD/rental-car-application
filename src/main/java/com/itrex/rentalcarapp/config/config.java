package com.itrex.rentalcarapp.config;

import org.springframework.boot.jdbc.DataSourceBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.sql.DataSource;

@Configuration
public class config {

//    @Bean
//    public DataSource datasource() {
//        return DataSourceBuilder.create()
//                .driverClassName("org.postgresql.Driver")
//                .url("jdbc:postgresql://localhost:5433/rental-car")
//                .username("postgres")
//                .password("postgres")
//                .build();
//    }
}
