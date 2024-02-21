locals {

  # general
  environment       = "something"
  environment_short = "something"
  namespace         = "something"
  region            = "us-west-2"
  

  # database
  database_instance_class         = "db.m6g.8xlarge"
  database_replica_instance_class = "db.m6g.2xlarge"
  database_iops                   = 1000
  database_storage                = 250
  database_read_replica           = true
  database_parameters = {
    log_min_duration_sample    = { value = "1000" },
    log_min_duration_statement = { value = "1500" },
    work_mem                   = { value = "262144" },
  }
  database_allow_rules = {
    wardells_laptop = {
        description = "Wardells laptop"
        cidr_blocks = ["100.0.0.90/32"]
    }
  }
}