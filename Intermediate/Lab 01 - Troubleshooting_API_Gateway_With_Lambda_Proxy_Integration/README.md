# 🧪 Lab: Troubleshooting AWS API Gateway Lambda Proxy Integration

## Overview

This lab guides you through the process of troubleshooting and resolving issues with an Amazon API Gateway that is configured to use a Lambda proxy integration. When the API is called, it returns an "Internal server error" with a 500 status code. You will learn how to identify and fix configuration issues to ensure the API returns a "Hello from Lambda" response with a 200 status code.

## Level

Intermediate

## Prerequisites

- Familiarity with AWS Management Console, Amazon API Gateway, AWS Lambda, and Python programming.
- Update the `terraform.tfvars` file with your AWS access key ID and secret access key.
- Run `terraform init` to initialize Terraform.
- Run `terraform apply` to set up the resources in AWS.

## Lab Objectives

By completing this lab, you will:

- Examine the current configuration of the API Gateway and the Lambda function.
- Troubleshoot and identify issues in the existing configuration.
- Remediate the configuration so the API returns the desired response when invoked.

## Lab Structure

### 1. Examine Current Configuration

- **Objective**: Analyze the setup of API Gateway and the Lambda function.
- **Steps**:
	- Check the Lambda function code and its execution role permissions.
	![Image 01](https://github.com/Souravpakhira/images/blob/main/Intermediate/lab%2001/lab2_2024-01-14_21-48.png?raw=true)
	- Click on test to check if code is working properly
    ![Image 02](https://github.com/Souravpakhira/images/blob/main/Intermediate/lab%2001/lab2_2024-01-14_21-43.png?raw=true)
    ![Image 03](https://github.com/Souravpakhira/images/blob/main/Intermediate/lab%2001/lab2_2024-01-14_21-45.png?raw=true)
  - Navigate to the API Gateway console and inspect the configured API and its integration.
     ![Image 04](https://github.com/Souravpakhira/images/blob/main/Intermediate/lab%2001/lab2_2024-01-14_21-51.png?raw=true)
  - Copy the Url in the browser to test the API
	 ![Image 05](https://github.com/Souravpakhira/images/blob/main/Intermediate/lab%2001/lab2_2024-01-14_23-45.png?raw=true)
  - Api is throwing Internal server error
     ![Image 06](https://github.com/Souravpakhira/images/blob/main/Intermediate/lab%2001/lab2_2024-01-14_22-13.png?raw=true)

### 2. Troubleshooting

- **Objective**: Identify the cause of the "Internal server error".
- **Steps**:
  - Review CloudWatch logs for error messages related to API Gateway and the Lambda function.
  ![Image 07](https://github.com/Souravpakhira/images/blob/main/Intermediate/lab%2001/lab2_2024-01-14_21-55.png?raw=true)
  ![Image 08](https://github.com/Souravpakhira/images/blob/main/Intermediate/lab%2001/lab2_2024-01-14_21-57.png?raw=true)
  ![Image 09](https://github.com/Souravpakhira/images/blob/main/Intermediate/lab%2001/lab2_2024-01-14_22-01.png?raw=true)
  ![Image 10](https://github.com/Souravpakhira/images/blob/main/Intermediate/lab%2001/lab2_2024-01-14_22-00.png?raw=true)
  - > The error “Internal server error” occurs if API Gateway doesn't have permissions to invoke the Lambda function.
  - Verify that API Gateway has the necessary permissions to invoke the Lambda function.
  - Navigate to Configuration inside lambda function and check setup
  ![Image 11](https://github.com/Souravpakhira/images/blob/main/Intermediate/lab%2001/lab2_2024-01-14_22-06.png?raw=true)

### 3. Remediation

- **Objective**: Apply fixes to resolve the configuration issues.
- **Steps**:
  - Click on add permission
  ![Image 12](https://github.com/Souravpakhira/images/blob/main/Intermediate/lab%2001/lab2_2024-01-14_22-07.png?raw=true)
  - Update IAM policies to grant API Gateway the necessary permissions.
  ![Image 13](https://github.com/Souravpakhira/images/blob/main/Intermediate/lab%2001/lab2_2024-01-14_22-09.png?raw=true)
  ![Image 14](https://github.com/Souravpakhira/images/blob/main/Intermediate/lab%2001/lab2_2024-01-14_22-12.png?raw=true)
  - Test the API invocation to confirm that the changes have resolved the issue.
  ![Image 15](https://github.com/Souravpakhira/images/blob/main/Intermediate/lab%2001/lab2_2024-01-14_23-01.png?raw=true)

> **_NOTE:_** After completing the lab, you should destroy the resources to avoid incurring any charges. Run the following command after completing the lab:

```bash
terraform destroy
```

Confirm the destruction when prompted.

## Conclusion

🎉 Congratulations! You have successfully completed the Troubleshooting AWS API Gateway Lambda Proxy Integration lab. You now have practical experience in diagnosing and resolving integration issues between AWS services.

Feel free to explore additional labs in this repository to further enhance your AWS skills.

Happy troubleshooting!
