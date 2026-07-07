aws_region = "ap-south-1"

vpc_cidr = "10.1.0.0/16"

public_subnet_1_cidr = "10.1.1.0/24"
public_subnet_2_cidr = "10.1.2.0/24"

private_subnet_1_cidr = "10.1.3.0/24"
private_subnet_2_cidr = "10.1.4.0/24"

availability_zone_1 = "ap-south-1a"
availability_zone_2 = "ap-south-1b"

db_name = "hoteldb"

db_username = "postgres"

db_password = "Password@123"

db_instance_class = "db.t3.small"

allocated_storage = 50

backup_retention_period = 7

deletion_protection = true

execution_role_arn = "arn:aws:iam::123456789012:role/ecsTaskExecutionRole"