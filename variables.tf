
variable "aws_region" {
  default = "us-east-1"
  description = "The AWS region to use"
}
variable "customer_prefix" {
  default = "hfm-"
  description = "Customer Prefix to apply to all resources"
}

variable "environment" {
  default = "lab"
  description = "The Tag Environment to differentiate prod/test/dev"
}
variable "availability_zone_1" {
  default = "us-east-1a"
  description = "Availability Zone 1 for VPC"
}

variable "availability_zone_2" {
  default = "us-east-1b"
  description = "Availability Zone 2 for VPC"
}
variable "fortigate_sg_name" {
  default = "FGT-SG"
  description = "Fortigate Security Group Name"
}
variable "vpc_name_security" {
  default = "Security VPC"
  description = "Name of Security VPC"
}

variable "vpc_name_east" {
  default = "VPC - Spoke A"
    description = "Name of east VPC"
}

variable "vpc_name_west" {
  default = "VPC - Spoke B"
    description = "Name of west VPC"
}

variable "vpc_cidr_security" {
  default = "172.31.0.0/16"
    description = "CIDR for the whole security VPC"
}

variable "vpc_cidr_east" {
  default = "172.30.50.0/24"
    description = "CIDR for the whole dev VPC"
}

variable "vpc_cidr_west" {
  default = "172.30.60.0/24"
    description = "CIDR for the whole test VPC"
}

variable "public_subnet_cidr1" {
  
    description = "CIDR for the Public 1 Subnet"
}

variable "public_subnet_cidr2" {
    description = "CIDR for the Public 2 Subnet"
}

variable "public1_ip_address" {
  description = "IP Address for Public 1 Subnet Fortigate ENI"
}

variable "public2_ip_address" {
  description = "IP Address for Public 2 Subnet Fortigate ENI"
}

variable "public1_description" {
    description = "Description Public 1 Subnet TAG"
}

variable "public2_description" {
    description = "Description Public 2 Subnet TAG"
}

variable "private_subnet_cidr_1" {
    description = "CIDR for the Private 1 Subnet"
}
variable "private1_description" {
    description = "Description Private 1 TO Subnet TAG"
}

variable "private1_subnet_tgw_cidr" {
    description = "CIDR for the Private 1 TGW Subnet"
}

variable "private1_tgw_description" {
    description = "Description Private 1 TGW Subnet TAG"
}


variable "private2_subnet_tgw_cidr" {
    description = "CIDR for the Private 2 TGW Subnet"
}

variable "private2_tgw_description" {
    description = "Description Private 2 TGW Subnet TAG"
}

variable "private_subnet_cidr_2" {
    description = "CIDR for the Private 2 TO Subnet"
}

variable "private2_description" {
    description = "Description Private Subnet TAG"
}

variable "private2_ip_address" {
  description = "IP Address for Private 2 Subnet Fortigate ENI"
}

variable "private1_ip_address" {
  description = "IP Address for Private 1 Subnet Fortigate ENI"
}

variable "sync_subnet_cidr_1" {
    description = "CIDR for the SYNC AZ 1 Subnet"
}

variable "sync_description_1" {
    description = "Description SYNC AZ 1 Subnet TAG"
}

variable "sync_subnet_ip_address_1" {
  description = "IP Address for SYNC AZ1 Subnet Fortigate ENI"
}

variable "sync_subnet_cidr_2" {
    description = "CIDR for the SYNC AZ 2 Subnet"
}

variable "sync_description_2" {
    description = "Description SYNC AZ 2 Subnet TAG"
}

variable "sync_subnet_ip_address_2" {
  description = "IP Address for SYNC AZ2 Subnet Fortigate ENI"
}

variable "ha_subnet_cidr_1" {
    description = "CIDR for the HA AZ 1 Subnet"
}

variable "ha_description_1" {
    description = "Description HA AZ 1 Subnet TAG"
}

variable "ha_subnet_ip_address_1" {
  description = "IP Address for HA AZ1 Subnet Fortigate ENI"
}

variable "ha_subnet_cidr_2" {
    description = "CIDR for the HA AZ 2 Subnet"
}

variable "ha_description_2" {
    description = "Description HA AZ 2 Subnet TAG"
}

variable "ha_subnet_ip_address_2" {
  description = "IP Address for HA AZ2 Subnet Fortigate ENI"
}

variable "keypair" {
  description = "Keypair for instances that support keypairs"
}
variable "cidr_for_access" {
  description = "CIDR to use for security group access"
}
variable "fortigate_instance_type" {
  description = "Instance type for fortigates"
}
variable "fortigate_instance_name_1" {
  description = "Instance Name for fortigate"
}
variable "fortigate_instance_name_2" {
  description = "Instance Name for fortigate"
}
variable "create_transit_gateway" {
  default = y
  description = "Boolean Create the transit gateway in this deployment. If TGW isn't created, neither will connected objects"
  type = bool
}
variable "create_management_elastic_ips" {
  default = y
  description = "Boolean Create the elastic ips in the management subnet."
  type = bool
}
variable "create_public_elastic_ip" {
  default = y
  description = "Boolean Create the failover elastic ip in the public subnet."
  type = bool
}
variable "use_fortigate_byol" {
  default = y
  description = "Boolean Use the Fortigate BYOL AMI"
  type = bool
}
variable "acl" {
  description = "The S3 acl"
}
variable "fortios_version" {
  description = "FortiOS Version for the AMI Search String"
}
variable "fgt_byol_1_license" {
  default = "./licenses/fgt-byol.lic"
  description = "Fortigate license file"
}
variable "fgt_byol_2_license" {
  default = "./licenses/fgt-byol.lic"
  description = "Fortigate license file"
}
variable "fgt_ha_password" {
  default = "Vpn1234567890"
  description = "Fortigate HA Password"
}
variable "fgt_admin_password" {
  #default = {instance_ID}
  description = "Fortigate Admin Password"
}
variable "fortigate_hostname_1" {
  description = "Fortigate Hostname 1"
}
variable "fortigate_hostname_2" {
  description = "Fortigate Hostname 2"
}

#
# Ubuntu Endpoint resources
#
variable "ec2_sg_name" {
  description = "Linux Endpoint Security Group Name"
}
variable "linux_instance_type" {
  description = "Linux Endpoint Instance Type"
}
variable "enable_linux_instances" {
  description = "Boolean to allow creation of Linux Instances in East/West VPCs"
  type        = bool
}
variable "linux_instance_name_east" {
  description = "Linux Endpoint Instance Name"
}
variable "linux_instance_name_west" {
  description = "Linux Endpoint Instance Name"
}
#
# Fortimanager Varaibles
#
variable "enable_fortimanager" {
  description = "Boolean to allow creation of Fortimanager Instance in Security VPC"
  type        = bool
}
variable "use_fortimanager_byol" {
  description = "Boolean Use the Fortimanager BYOL AMI"
  type = bool
}
variable "fortimanager_enable_public_ips" {
  description = "Boolean to allocatee a public IP (EIP) for Fortimanager"
  type = bool
}
variable "fortimanager_use_byol" {
  description = "Boolean to use Fortimanager license, ami, and configuration template"
  type = bool
}
variable "fortimanager_sg_name" {
  description = "Fortimanager Security Group Name"
}
variable "fortimanager_instance_type" {
  description = "Instance type for fortimanager"
}
variable "fortimanager_instance_name" {
  description = "Instance Name for fortimanager"
}
variable "fortimanager_os_version" {
  description = "Fortimanager OS Version for the AMI Search String"
}
variable "fortimanager_ip_address" {
  description = "Fortimanager IP Address"
}
variable "fortimanager_byol_license" {
  description = "Fortimanager byol license"
}
