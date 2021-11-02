#### Create Security Group
### https://ibm-cloud.github.io/tf-ibm-docs/v0.9.1/r/security_group.html

resource "ibm_security_group" "instana_sg" {
  name = "instana_demo"
}


#### Create Security Rules associated to Security Group
### https://ibm-cloud.github.io/tf-ibm-docs/v0.9.1/r/security_group_rule.html

resource "ibm_security_group_rule" "instana_allow_ssh" {
  direction         = "ingress"
  ether_type        = "IPv4"
  port_range_min    = 22
  port_range_max    = 22
  protocol          = "tcp"
  security_group_id = ibm_security_group.instana_sg.id
}

resource "ibm_security_group_rule" "instana_allow_80" {
  direction         = "ingress"
  ether_type        = "IPv4"
  port_range_min    = 80
  port_range_max    = 80
  protocol          = "tcp"
  security_group_id = ibm_security_group.instana_sg.id
}

resource "ibm_security_group_rule" "instana_allow_443" {
  direction         = "ingress"
  ether_type        = "IPv4"
  port_range_min    = 443
  port_range_max    = 443
  protocol          = "tcp"
  security_group_id = ibm_security_group.instana_sg.id
}

resource "ibm_security_group_rule" "instana_allow_86" {
  direction         = "ingress"
  ether_type        = "IPv4"
  port_range_min    = 86
  port_range_max    = 86
  protocol          = "tcp"
  security_group_id = ibm_security_group.instana_sg.id
}

resource "ibm_security_group_rule" "instana_allow_446" {
  direction         = "ingress"
  ether_type        = "IPv4"
  port_range_min    = 446
  port_range_max    = 446
  protocol          = "tcp"
  security_group_id = ibm_security_group.instana_sg.id
}

resource "ibm_security_group_rule" "instana_allow_1444" {
  direction         = "ingress"
  ether_type        = "IPv4"
  port_range_min    = 1444
  port_range_max    = 1444
  protocol          = "tcp"
  security_group_id = ibm_security_group.instana_sg.id
}

resource "ibm_security_group_rule" "instana_allow_egress_all" {
  direction         = "egress"
  ether_type        = "IPv4"
  port_range_min    = 0
  port_range_max    = 0
  protocol          = "tcp"
  security_group_id = ibm_security_group.instana_sg.id
}

