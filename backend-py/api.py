# Import framework
from flask import Flask
from flask_restful import Resource, Api
# from flask import request
from helpers.ApiResponse import ApiResponse
from helpers.ApiResponseBody import ApiResponseBody
# from helpers.DbConnection import DbConnection
from entities.TbRoles import TbRoles
from services.TbRolesSrv import TbRolesSrv

# Instantiate the app
app = Flask(__name__)
api = Api(app)

class Teste(Resource):
    def get(self):
        '''
        rBody = ApiResponseBody()
        conn = DbConnection()
        conn.setQuery('SELECT * FROM roles')
        conn.executeQuery()

        for row in conn.getAll():
            rBody.add(row['id'], row)

        return ApiResponse.generateResponse(200, 'Ok', rBody.getResponse())
        '''

        '''
        Role = TbRoles()
        Role.id = 1
        Role.roleKey = 'TESTE'
        Role.active = True

        rBody = ApiResponseBody()
        rBody.add(0, Role.toObject())
        return ApiResponse.generateResponse(200, 'Ok', rBody.getResponse())
        '''

        try:
            RoleSrv = TbRolesSrv()
            Role = RoleSrv.findById(4)
            rBody = ApiResponseBody()
            rBody.add(0, Role.toObject())
            return ApiResponse.generateResponse(200, 'Ok', rBody.getResponse())
        except:
            return ApiResponse.generateResponse(500, 'Erro no processo!')

        '''
        return {
            'Galaxies': [
                'Milkyway',
                'Andromeda',
                'Large Magellanic Cloud (LMC)',
                'Small Magellanic Cloud (SMC)'
            ]
        }
        '''
    def post(self):
        #teste = request.args.get('teste')
        #teste = request.form.get('teste')

        return {
            'cadastrou': 'teste'
        }

# Create routes (v1)
# https://hackersandslackers.com/flask-routes/
api.add_resource(Teste, '/api/v1/galaxies')

# error handling
@app.errorhandler(404)
def not_found(self):
    return ApiResponse.generateResponse(404, 'Ops, a 404 error was found!')

# Run the application
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80, debug=True)