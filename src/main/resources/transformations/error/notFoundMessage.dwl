%dw 2.0
output application/json
---
{
    "success": false,
    "apiName": Mule::p("api.name"),
    "version": Mule::p("api.version"),
    "correlationId": correlationId,
    "timestamp": now(),
    "errorDetails": [
            {
                "code": 404,
                "message": "Not Found",
                "additionalInfo": "Not Found : " ++ (error.description default "")
            }
        ]
}