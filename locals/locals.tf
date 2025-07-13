locals {
  final_name = "${var.project}-${var.environment}-${var.component}"
  ec2_tags = merge(
    var.common_tags,
    {
        environment = "dev"
        version = "1.0"
    }
  )
  sg_id = [aws_security_group.allow_all.id]

}
