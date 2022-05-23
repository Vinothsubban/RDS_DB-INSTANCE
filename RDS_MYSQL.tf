  provider "aws" {
    region = "us-east-1"
  }

    #create RDS MYSQL DB
     resource "aws_db_instance" "default"{
         identifier                = "dbrds"
         engine                    = "mysql"
         engine_version            = "8.0.27"
         instance_class            = "db.t2.micro"
         db_name                   = "dbrds"
         username                  = "admin"
         password                  = "admin1234"
         allocated_storage         = 20
         skip_final_snapshot       = true
         final_snapshot_identifier = "Ignore"
        }