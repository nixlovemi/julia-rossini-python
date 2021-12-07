from entities.BaseEntity import BaseEntity

class TbRoles(BaseEntity):
    @property
    def id(self):
        return self._id

    @id.setter
    def id(self, value: int):
        self._id = value

    @property
    def roleKey(self):
        return self._role_key

    @roleKey.setter
    def roleKey(self, value: str):
        self._role_key = value

    @property
    def active(self):
        return self._active

    @active.setter
    def active(self, value: bool):
        self._active = value