from entities.TbNotifications import TbNotifications
from services.BaseSrv import BaseSrv

class TbNotificationsSrv(BaseSrv):
    def findById(self, id: int) -> TbNotifications:
        conn = self.getConnection()
        conn.setQuery('SELECT * FROM notifications WHERE id = %s')
        conn.setVariables([id])
        conn.executeQuery()
        row = conn.getOne()

        Notification = TbNotifications()
        Notification.id = row['id']
        Notification.userId = row['user_id']
        Notification.date = row['date']
        Notification.message = row['message']
        Notification.isRead = row['is_read']

        return Notification
