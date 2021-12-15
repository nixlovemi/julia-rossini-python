from models.BaseModel import BaseModel

class TbRoles(BaseModel):
    table = 'roles'
    fields = {
        'id' : 'int',
        'role_key' : 'string',
        'active' : 'bool'
    }
    defaults = {
      'active' : True  
    }