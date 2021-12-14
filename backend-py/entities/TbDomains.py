from entities.BaseEntity import BaseEntity

class TbDomains(BaseEntity):
    @property
    def id(self):
        return self._id

    @id.setter
    def id(self, value: int):
        self._id = value

    @property
    def ownerId(self):
        return self._owner_id

    @ownerId.setter
    def ownerId(self, value: int):
        self._owner_id = value

    @property
    def domainName(self):
        return self._domain_name

    @domainName.setter
    def domainName(self, value: str):
        self._domain_name = value

    @property
    def createdAt(self):
        return self._created_at

    @createdAt.setter
    def createdAt(self, value: str):
        self._created_at = value

    @property
    def active(self):
        return self._active

    @active.setter
    def active(self, value: bool):
        self._active = value

    @property
    def bgLoginUrl(self):
        return self._bg_login_url

    @bgLoginUrl.setter
    def bgLoginUrl(self, value: str):
        self._bg_login_url = value