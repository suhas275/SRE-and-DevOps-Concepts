
resource "aws_db_instance" "app_db" {
  allocated_storage = 20
  engine = "mysql"
  instance_class = "db.t3.micro"
  db_name = "app_db"
  username = var.db_user
  password = var.db_password
  vpc_security_group_ids = [var.db_sg_id]
  skip_final_snapshot = true
}
