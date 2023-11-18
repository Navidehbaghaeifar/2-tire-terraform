{"filter":false,"title":"outputs.tf","tooltip":"/module/network_flow/outputs.tf","undoManager":{"mark":0,"position":0,"stack":[[{"start":{"row":0,"column":0},"end":{"row":55,"column":1},"action":"insert","lines":["# Outputs","################################","#VPC Outputs","################################","output \"vpc_id\" {","  value = aws_vpc.two_tier_vpc.id","}","","output \"pub_sub1_id\" {","  value = aws_subnet.pub_sub1.id","}","","output \"pub_sub2_id\" {","  value = aws_subnet.pub_sub2.id","}","","output \"priv_sub1_id\" {","  value = aws_subnet.priv_sub1.id","}","","output \"priv_sub2_id\" {","  value = aws_subnet.priv_sub2.id","}","","################################","#Gateway Outputs","################################","output \"two_tier_igw_id\" {","  value = aws_internet_gateway.two_tier_igw.id","}","","################################","#Route Table Outputs","################################","output \"pub_rt_id\" {","  value = aws_route_table.pub_rt.id","}","","output \"priv_rt_id\" {","  value = aws_route_table.priv_rt.id","}","","################################","#Security Group Outputs","################################","output \"alb_sg_id\" {","  value = aws_security_group.alb_sg.id","}","","output \"asg_sg_id\" {","  value = aws_security_group.asg_sg.id","}","","output \"db_sg_id\" {","  value = aws_security_group.db_sg.id","}"],"id":1}]]},"ace":{"folds":[],"scrolltop":367,"scrollleft":0,"selection":{"start":{"row":55,"column":1},"end":{"row":55,"column":1},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1700255731006,"hash":"f310fb0e9fcffcb716811c396706efc2d80b8db9"}