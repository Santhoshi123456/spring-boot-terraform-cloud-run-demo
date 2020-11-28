resource google_cloud_run_service "spring_boot_terraform_cloud_run_service" {
  name = "spring-boot-hello-service"
  location = "us-central1"

  template {
    spec {
      containers {
        image = "gcr.io/ultimate-hydra-288114/spring-boot-terraform-cloud-run"
      }
    }
  }
}

data google_iam_policy "iam_policy_all_users" {
  binding {
    role = "roles/run.invoker"
    members = [
      "allUsers",
    ]
  }
}

resource google_cloud_run_service_iam_policy "hello_all_users" {
  service = google_cloud_run_service.spring_boot_terraform_cloud_run_service.name
  location = google_cloud_run_service.spring_boot_terraform_cloud_run_service.location
  policy_data = data.google_iam_policy.iam_policy_all_users.policy_data
}