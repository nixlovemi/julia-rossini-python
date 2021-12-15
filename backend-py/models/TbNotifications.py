from models.BaseModel import BaseModel

class TbNotifications(BaseModel):
    table = 'notifications'
    fields = {
        'id' : 'int',
        'user_id' : 'int',
        'date' : 'string',
        'message': 'text',
        'is_read': 'bool',
    }
    defaults = {
      'is_read' : False  
    }