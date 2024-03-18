package com.danilo.springbootjenkinsdocker.controller;

import lombok.extern.log4j.Log4j2;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/health")
@Log4j2
public class TestController {

    @GetMapping
    public ResponseEntity<Void> test() {
        log.info("Request /health success");
        return ResponseEntity.status(HttpStatus.OK).build();
    }

}
