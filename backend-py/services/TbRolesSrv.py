from entities.TbRoles import TbRoles
from services.BaseSrv import BaseSrv

class TbRolesSrv(BaseSrv):
    def findById(self, id: int) -> TbRoles:
        conn = self.getConnection()
        conn.setQuery('SELECT * FROM roles WHERE id = %s')
        conn.setVariables([id])
        conn.executeQuery()
        row = conn.getOne()

        Role = TbRoles()
        Role.id = row['id']
        Role.roleKey = row['role_key']
        Role.active = row['active']

        return Role
