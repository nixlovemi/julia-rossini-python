from entities.BaseEntity import BaseEntity

class TbNotifications(BaseEntity):
    @property
    def id(self):
        return self._id

    @id.setter
    def id(self, value: int):
        self._id = value

    @property
    def userId(self):
        return self._user_id

    @userId.setter
    def userId(self, value: int):
        self._user_id = value

    @property
    def date(self):
        return self._date

    @date.setter
    def date(self, value: str):
        self._date = value

    @property
    def message(self):
        return self._message

    @message.setter
    def message(self, value: str):
        self._message = value

    @property
    def isRead(self):
        return self._is_read

    @isRead.setter
    def isRead(self, value: bool):
        self._is_read = value