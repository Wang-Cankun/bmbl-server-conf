# Full configuration options can be found at https://www.nomadproject.io/docs/configuration
# /etc/nomad.d
data_dir  = "/server/nomad/data"
bind_addr = "0.0.0.0"

server {
  # license_path is required as of Nomad v1.1.1+
  #license_path = "/etc/nomad.d/nomad.hcl"
  enabled          = true
  bootstrap_expect = 1
  default_scheduler_config {
    scheduler_algorithm = "binpack"

    memory_oversubscription_enabled = true

    preemption_config {
      batch_scheduler_enabled    = true
      system_scheduler_enabled   = true
      service_scheduler_enabled  = true
      sysbatch_scheduler_enabled = true
    }
  }
}

client {
  enabled = true
  servers = ["127.0.0.1"]
}

plugin "raw_exec" {
  config {
    enabled = true
  }
}

