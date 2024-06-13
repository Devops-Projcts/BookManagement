#!/bin/bash

#########################
# Author: Gourav
# Date: 10th june 
#
# version: v1 
# 
# this script will report the AWS resource usage
#########################

# AWS S3
# AWS EC2
# AWS Lambda 
# AWS  IAM Users

# list S3 bucket
set -x 

aws s3 ls > S3resourceTracker  

# list EC2 Instances  
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' > EC2resourceTracker

# list lambda 
aws lambda list-functions > LambdaResourceTracker

# list IAM users 
aws iam list-users > IAMUserResourceTracker
 

