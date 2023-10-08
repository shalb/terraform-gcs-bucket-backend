resource "google_compute_url_map" "main" {
  name            = var.name
  default_service = google_compute_backend_bucket.main.self_link

  host_rule {
    hosts        = ["*"]
    path_matcher = "allpaths"
  }

  path_matcher {
    name            = "allpaths"
    default_service = google_compute_backend_bucket.main.self_link

    path_rule {
      paths = [
        "/",
        "/*"
      ]
      service = google_compute_backend_bucket.main.self_link
    }
  }
}

resource "google_compute_backend_bucket" "main" {
  name        = var.name
  description = "Contains static resources"
  bucket_name = var.bucket_name
  enable_cdn  = true
}
