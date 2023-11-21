# AWS Practice Labs

Welcome to the AWS Hands-On Labs repository! This repository contains Terraform scripts for creating real-world scenarios and tasks on AWS. Follow the instructions below to set up your environment and start practicing with AWS services using Terraform.


## Prerequisites

Before you begin, make sure you have the following prerequisites:

1. **AWS Account**: You need an AWS account to perform the hands-on labs. If you don't have one, you can create an account [here](https://aws.amazon.com/).

2. **AWS Access Key ID and Secret Access Key**: Obtain your AWS access key ID and secret access key from the AWS Management Console. Follow the steps [here](https://docs.aws.amazon.com/general/latest/gr/aws-sec-cred-types.html#access-keys-and-secret-access-keys) to create or retrieve them.

3. **Terraform Installation**: Ensure that Terraform is installed on your local machine. You can download Terraform from the official website [here](https://www.terraform.io/downloads.html) and follow the installation instructions.


## Getting Started

1. Clone this repository to your local machine:

 ```bash
git clone https://github.com/Souravpakhira/AWS-practice-labs.git
```

2. Go to the project directory

 ```bash
cd AWS-practice-labs
```

3. Change into the specific lab directory (e.g., fundamentals/lab1-vpc)
```bash
cd fundamentals/lab1-vpc
```
4. Update the terraform.tfvars file with your AWS access key ID and secret access key.

```hcl
aws_access_key = "YOUR_ACCESS_KEY"
aws_secret_key = "YOUR_SECRET_KEY"
```

5. Initialize Terraform:

```bash

terraform init
```

6. Apply the Terraform configuration:

```bash
terraform apply
```
> **_NOTE:_** After completing the lab, you should destroy the resources so that it does not generate any bills. Run the following cmd after completing any labs.

```bash
terraform destroy
```
Confirm the destruction when prompted.


## Contributing

Feel free to contribute to this repository by adding new labs, improving existing ones, or providing feedback. Create a pull request with your changes, and we'll review it.

## ⭐ Star the Repository

If you find these hands-on labs helpful and valuable, please consider giving this repository a star! ⭐ Your support is greatly appreciated and helps others discover and benefit from these resources.

**Thank you for your support!**

Happy learning and practicing with AWS!

