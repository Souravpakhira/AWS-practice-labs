# 🧪 Lab: Introduction to AWS Identity and Access Management (IAM)

## Overview

This lab provides hands-on experience with managing access and permissions to AWS services using AWS Identity and Access Management (IAM). You will explore IAM users and groups, inspect IAM policies, follow a real-world scenario to add users to groups with specific capabilities, and experiment with the effects of policies on service access.

## Level

Fundamental

## Prerequisites

- Update the `terraform.tfvars` file with your AWS access key ID and secret access key.
- Run `terraform init` to initialize the terraform
- Run `terraform apply` to setup the resources in aws.

## Lab Objectives

By completing this lab, you will:

- Explore pre-created IAM Users and Groups.
- Inspect IAM policies as applied to the pre-created groups.
- Follow a real-world scenario, adding users to groups with specific capabilities enabled.
- Locate and use the IAM sign-in URL.
- Experiment with the effects of policies on service access.

## Lab Structure

### 1. Introduction to IAM Users and Groups

- **Objective**: Explore pre-created IAM Users and Groups.
- **Steps**:
  - Log in to the AWS Management Console.
  - Navigate to the IAM dashboard.
  ![Image 01](https://github.com/Souravpakhira/images/blob/78a30e7de1b247bd86f311950806e5a25f08f661/lab%2001/lab1_iam1.png?raw=true)
  - View and inspect pre-created IAM Users and Groups.
  ![Image 02](https://github.com/Souravpakhira/images/blob/78a30e7de1b247bd86f311950806e5a25f08f661/lab%2001/lab1_iam2.png?raw=true)

  ![Image 03](https://github.com/Souravpakhira/images/blob/78a30e7de1b247bd86f311950806e5a25f08f661/lab%2001/lab1_iam3.png?raw=true)

### 2. Inspecting IAM Policies

- **Objective**: Inspect IAM policies as applied to the pre-created groups.
- **Steps**:
  - Review IAM policies associated with the pre-created groups.
  ![Image 04](https://github.com/Souravpakhira/images/blob/78a30e7de1b247bd86f311950806e5a25f08f661/lab%2001/lab1_iam4.png?raw=true)
  - Understand the permissions granted by these policies.

### 3. Real-World Scenario: Adding Users to Groups

- **Objective**: Follow a real-world scenario, adding users to groups with specific capabilities enabled.
- **Steps**:
  - Create a new IAM user.
  - Add the user to a specific IAM group.
  - Assign policies to the group to grant specific permissions.

### 4. IAM Sign-in URL 

- **Objective**: Locate and use the IAM sign-in URL to login from newley created user.
- **Steps**:
  - Find the IAM sign-in URL in the AWS Management Console.
  ![Image 05](https://github.com/Souravpakhira/images/blob/78a30e7de1b247bd86f311950806e5a25f08f661/lab%2001/lab1_iam5.png?raw=true)
  - Enable the console access for the user and set password.
  ![Image 06](https://github.com/Souravpakhira/images/blob/78a30e7de1b247bd86f311950806e5a25f08f661/lab%2001/lab1_iam6.png?raw=true)
  - Log in using IAM-created user credentials.

### 5. Experimenting with Policy Effects

- **Objective**: Experiment with the effects of policies on service access.
- **Steps**:
  - Modify IAM policies to observe changes in service access.
  - Understand how IAM policies control permissions.


> **_NOTE:_** After completing the lab, you should destroy the resources so that it does not generate any bills. Run the following cmd after completing the lab.

```bash
terraform destroy
```
Confirm the destruction when prompted.

## Conclusion

🎉 Congratulations! You have completed the Introduction to AWS Identity and Access Management (IAM) lab. By following these exercises, you have gained practical experience in managing access to AWS services using IAM.

Feel free to explore additional labs in this repository to further enhance your AWS.

Happy learning!😎
