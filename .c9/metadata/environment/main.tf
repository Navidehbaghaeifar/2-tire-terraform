{"filter":false,"title":"main.tf","tooltip":"/main.tf","undoManager":{"mark":6,"position":6,"stack":[[{"start":{"row":0,"column":0},"end":{"row":0,"column":7},"action":"insert","lines":["main.tf"],"id":1}],[{"start":{"row":0,"column":6},"end":{"row":0,"column":7},"action":"remove","lines":["f"],"id":2},{"start":{"row":0,"column":5},"end":{"row":0,"column":6},"action":"remove","lines":["t"]},{"start":{"row":0,"column":4},"end":{"row":0,"column":5},"action":"remove","lines":["."]},{"start":{"row":0,"column":3},"end":{"row":0,"column":4},"action":"remove","lines":["n"]},{"start":{"row":0,"column":2},"end":{"row":0,"column":3},"action":"remove","lines":["i"]},{"start":{"row":0,"column":1},"end":{"row":0,"column":2},"action":"remove","lines":["a"]},{"start":{"row":0,"column":0},"end":{"row":0,"column":1},"action":"remove","lines":["m"]}],[{"start":{"row":0,"column":0},"end":{"row":70,"column":1},"action":"insert","lines":["#Instance Module","module \"auto_scaling_group\" {","  source               = \"./modules/ec2_auto_scaling\"","  pub_sub1_id          = module.network_flow.pub_sub1_id","  pub_sub2_id          = module.network_flow.pub_sub2_id","  lt_asg_ami           = \"ami-04581fbf744a7d11f\"","  lt_asg_instance_type = \"t2.micro\"","  lt_asg_key           = \"levelupkeypair\"","  script_name          = \"install-apache.sh\"","  asg_sg_id            = module.network_flow.asg_sg_id","  alb_tg_arn           = module.load_balancer.alb_tg_arn","}","","#Load Balancer Module","module \"load_balancer\" {","  source                = \"./modules/load_balancer\"","  pub_sub1_id           = module.network_flow.pub_sub1_id","  pub_sub2_id           = module.network_flow.pub_sub2_id","  alb_sg_id             = module.network_flow.alb_sg_id","  tg_port               = 80","  tg_protocol           = \"HTTP\"","  vpc_id                = module.network_flow.vpc_id","  alb_hc_interval       = 60","  alb_hc_path           = \"/\"","  alb_hc_port           = 80","  alb_hc_timeout        = 45","  alb_hc_protocol       = \"HTTP\"","  alb_hc_matcher        = \"200,202\"","  alb_listener_port     = \"80\"","  alb_listener_protocol = \"HTTP\"","}","","#VPC Module","module \"network_flow\" {","  source         = \"./modules/network_flow\"","  vpc_cidr       = var.pm_vpc_cidr","  pub_sub1_cidr  = \"10.0.1.0/24\"","  pub_sub2_cidr  = \"10.0.2.0/24\"","  priv_sub1_cidr = \"10.0.3.0/24\"","  priv_sub2_cidr = \"10.0.4.0/24\"","  map_public_ip  = true","  az_1           = \"us-east-1a\"","  az_2           = \"us-east-1b\"","  pub_rt_cidr    = \"0.0.0.0/0\"","  priv_rt_cidr   = \"0.0.0.0/0\"","}","","","#Data Module","module \"database\" {","  source                      = \"./modules/database\"","  priv_sub1_id                 = module.network_flow.priv_sub1_id","  priv_sub2_id                 = module.network_flow.priv_sub2_id","  allocated_storage           = 5","  storage_type                = \"gp2\"","  engine                      = \"mysql\"","  engine_version              = \"5.7\"","  instance_class              = \"db.t2.micro\"","  vpc_security_group_ids      = module.network_flow.db_sg_id","  parameter_group_name        = \"default.mysql5.7\"","  username                    = \"two_tier_db\"","  db_name                     = var.db_username","  password                    = var.db_password","  allow_major_version_upgrade = true","  auto_minor_version_upgrade  = true","  backup_retention_period     = 35","  backup_window               = \"22:00-23:00\"","  maintenance_window          = \"Sat:00:00-Sat:03:00\"","  multi_az                    = \"false\"","  skip_final_snapshot         = true","}"],"id":3}],[{"start":{"row":51,"column":30},"end":{"row":51,"column":31},"action":"remove","lines":[" "],"id":4,"ignore":true},{"start":{"row":52,"column":30},"end":{"row":52,"column":31},"action":"remove","lines":[" "]}],[{"start":{"row":7,"column":26},"end":{"row":7,"column":40},"action":"remove","lines":["levelupkeypair"],"id":5}],[{"start":{"row":7,"column":26},"end":{"row":7,"column":27},"action":"insert","lines":["k"],"id":6},{"start":{"row":7,"column":27},"end":{"row":7,"column":28},"action":"insert","lines":["e"]},{"start":{"row":7,"column":28},"end":{"row":7,"column":29},"action":"insert","lines":["y"]},{"start":{"row":7,"column":29},"end":{"row":7,"column":30},"action":"insert","lines":["p"]},{"start":{"row":7,"column":30},"end":{"row":7,"column":31},"action":"insert","lines":["a"]},{"start":{"row":7,"column":31},"end":{"row":7,"column":32},"action":"insert","lines":["i"]},{"start":{"row":7,"column":32},"end":{"row":7,"column":33},"action":"insert","lines":["r"]}],[{"start":{"row":7,"column":33},"end":{"row":7,"column":34},"action":"insert","lines":["n"],"id":7},{"start":{"row":7,"column":34},"end":{"row":7,"column":35},"action":"insert","lines":["e"]},{"start":{"row":7,"column":35},"end":{"row":7,"column":36},"action":"insert","lines":["w"]}]]},"ace":{"folds":[],"scrolltop":855,"scrollleft":0,"selection":{"start":{"row":7,"column":36},"end":{"row":7,"column":36},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":60,"state":"start","mode":"ace/mode/terraform"}},"timestamp":1700279307523,"hash":"722be537500174b4105b395c1dae7050bde3055c"}