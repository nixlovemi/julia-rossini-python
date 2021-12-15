from entities.TbDomains import TbDomains
from services.BaseSrv import BaseSrv

class TbDomainsSrv(BaseSrv):
    def findById(self, id: int) -> TbDomains:
        conn = self.getConnection()
        conn.setQuery('SELECT * FROM domains WHERE id = %s')
        conn.setVariables([id])
        conn.executeQuery()
        row = conn.getOne()

        Domains = TbDomains()
        Domains.id = row['id']
        Domains.ownerId = row['owner_id']
        Domains.domainName = row['domain_name']
        Domains.createdAt = row['created_at']
        Domains.active = row['active']
        Domains.bgLoginUrl = row['bg_login_url']

        return Domains
