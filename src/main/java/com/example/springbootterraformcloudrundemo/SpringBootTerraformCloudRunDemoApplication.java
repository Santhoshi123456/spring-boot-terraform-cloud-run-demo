package com.example.springbootterraformcloudrundemo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import reactor.core.publisher.Mono;

@RestController
@SpringBootApplication
public class SpringBootTerraformCloudRunDemoApplication {

  @GetMapping("/")
  public Mono<String> greeting() {
    return Mono.just("Hello Cloud Run!");
  }

  public static void main(String[] args) {
    SpringApplication.run(SpringBootTerraformCloudRunDemoApplication.class, args);
  }
}
