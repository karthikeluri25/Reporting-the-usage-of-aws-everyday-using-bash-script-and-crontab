#!/bin/bash

# Author: karthik
# Date: 27th Sept
# Version: v1
# This script will report the AWS resource usage

set -x


#list s3 buckets
echo "to print list of s3 buckets"
/usr/local/bin/aws s3 ls >> /root/demo/rsr1

# List ec2 instances
echo "to print list of all ec2 instances"
/usr/local/bin/aws ec2 describe-instances | /usr/local/bin/jq '.Reservations[].Instances[].InstanceId' >> /root/demo/rsr2

# List aws lambda
echo "to print list of all lambda functions"
/usr/local/bin/aws lambda list-functions >> /root/demo/rsr3

# List iam users
echo "to print list of all iam users"
/usr/local/bin/aws iam list-users >> /root/demo/rsr4
