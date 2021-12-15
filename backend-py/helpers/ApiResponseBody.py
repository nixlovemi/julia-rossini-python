class ApiResponseBody():
    content = {}

    def __init__(self, vContent={}):
        self.content = vContent
        pass

    def add(self, key: str, value: str):
        self.content[key] = value

    def getResponse(self):
        return self.content
