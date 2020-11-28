# spring-boot-terraform-cloud-run-demo

This example shows how to run a hello world service on Google Run using Terraform

**Prerequisites:** [Java 8](https://adoptopenjdk.net/)

 [Terraform](https://www.terraform.io/)


## Getting Started

Terraform is used to create the Google Cloud Run infrastructure needed to deploy our hello world spring boot service:

```bash
git clone https://github.com/mozammal/spring-boot-terraform-cloud-run-demo.git
cd spring-boot-terraform-cloud-run-demo
mvn clean compile jib:build 
cd terraform
terraform init
terraform plan
terraform apply
gcloud run services list --platform managed
```

To get access the URL of the deployed service, run the following command:

```bash
gcloud run services list --platform managed
```

You’ve now come to the point where you can finally see "Hello Cloud Run!" if you open the URL of the aforementioned deployed service on Google Cloud Run.

To get access the URL of the deployed service, run the following command:

```bash
gcloud run services list --platform managed
```

Destroy the infrastructure that we created in the previous step by running the following command:
```
terraform destroy
```
