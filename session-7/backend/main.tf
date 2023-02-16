resource "aws_db_instance" "main" {
  allocated_storage    = 10
  identifier           = replace(local.name,"resorce","rds") # name for rds instance
  db_name              = "mydb" #  database name inside the RDS instance
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  username             = "admin" # admin user
  password             = random_password.db_password.result
  skip_final_snapshot  = var.env != "prod" ? true : false      #false #it will create snapshot
  final_snapshot_identifier = var.env != "prod" ? null : "${var.env}-db-final-snapshot" #if env = dev, null
}

resource "random_password" "db_password" {
  length = 20
  special = true
  override_special = "%@"
}