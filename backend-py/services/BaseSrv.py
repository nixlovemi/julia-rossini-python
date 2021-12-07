# abstract base class work
from abc import ABC, abstractmethod
from helpers.DbConnection import DbConnection

class BaseSrv(ABC):
    _dbConnection = None

    @property
    def DbConnection(self):
        return self._dbConnection

    @DbConnection.setter
    def DbConnection(self, value: DbConnection):
        self._dbConnection = value

    def getConnection(self) -> DbConnection:
        if self._dbConnection is None:
            self._dbConnection = DbConnection()

        return self._dbConnection

    @abstractmethod
    def findById(self, id: int):
        pass