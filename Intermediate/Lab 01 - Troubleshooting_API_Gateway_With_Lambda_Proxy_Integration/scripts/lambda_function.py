import json


def lambda_handler(event, context):
    """
    AWS Lambda handler function.

    Parameters:
    - event: The event data passed to the Lambda function.
    - context: The runtime information provided by AWS Lambda.

    Returns:
    - A dictionary containing the response body and status code.
    """
    response_body = {
        "message": "Hello from Lambda",
    }

    return {
        "statusCode": 200,
        "body": json.dumps(response_body),
    }
