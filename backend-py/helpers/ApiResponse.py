from flask import jsonify
from helpers.ApiResponseBody import ApiResponseBody

class ApiResponse():

    @staticmethod
    def generateResponse(statusCode: int, message: str, data: ApiResponseBody={}):
        response = jsonify(
            {
                'code': statusCode,
                'message': message,
                'data': data
            }
        )
        response.status_code = statusCode
        return response
