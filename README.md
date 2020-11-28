# spring-boot-terraform-cloud-run-demo

This example shows how to run a hello world service on Google Run using Terraform

**Prerequisites:** [Java 8](https://adoptopenjdk.net/)

 [Terraform](https://www.terraform.io/)


## Getting Started

To install this example application, run the following commands:

```bash
git clone https://github.com/mozammal/gcloud-kubernetese-spring-boot.gitt
mvn clean compile jib:build 


cd terraform
terraform init
terraform plan
terraform apply
gcloud run services list --platform managed
```

Start the Spring Boot app using the following command:

