# https://laravel.com/docs/8.x/eloquent#table-names
# abstract base class work
from abc import ABC, abstractmethod
from helpers.DbConnection import DbConnection
from typing import Any, Dict

class BaseModel(ABC):
    # for now any new attribute that could be
    # changed, must be added in _fieldExists
    _dbConnection = None

    # if you need to change this,
    # overwrite it on child's constructor
    primaryKey = 'id'

    @property
    @abstractmethod
    def table(self) -> str:
        # string table name
        pass

    @property
    @abstractmethod
    def fields(self) -> Dict:
        # Dict with field_name -> type
        pass

    @property
    @abstractmethod
    def defaults(self) -> Dict:
        # Dict with default values for fields
        # implement {} if there's no default
        pass

    @property
    def DbConnection(self):
        return self._dbConnection

    @DbConnection.setter
    def DbConnection(self, value: DbConnection):
        self._dbConnection = value

    # class INIT method
    def __init__(self, dbConnection: DbConnection = None):
        if dbConnection is not None:
            self._dbConnection = dbConnection

        for key in self.fields:
            defValue = self._getDefaultValue(key)
            setattr(self, key, defValue)

    # get the connection object
    def getConnection(self) -> DbConnection:
        if self._dbConnection is None:
            self._dbConnection = DbConnection()

        return self._dbConnection
 
    # get all classe's attributes
    # and create a Dict
    def toObject(self):
        retDict = {}
        for attribute in self.__dict__.keys():
            if attribute[:2] != '__':
                value = getattr(self, attribute)
                if not callable(value):
                    # print(attribute, '=', value)
                    # removing first char "_" from attribute
                    # retDict[attribute[1:]] = value

                    # using as it is
                    retDict[attribute] = value

        return retDict

    # magic function to attributes
    # Ex: called with Class.id = 1
    def __setattr__(self, fieldName, value):
        if self._fieldExists(fieldName):
            self._setAttrValue(fieldName, value)

    def _setAttrValue(self, fieldName: str, value: str):
        self.__dict__[fieldName] = value

    # private fnc to get default value
    def _getDefaultValue(self, fieldName) -> Any:
        defValue = None
        if fieldName in self.defaults:
            defValue = self.defaults[fieldName]

        return defValue

    # private fnc to check if field exists
    def _fieldExists(self, fieldName) -> bool:
        if (fieldName in self.fields) or fieldName in {'_dbConnection'}:
            return True
        else:
            return False

    def _getFieldNamesStr(self) -> str:
        return ','.join(str(v) for v in self.fields)

    def _getChildClassName(self) -> str:
        return self.__class__.__name__

    # return instance of child class
    def _getChildClass(self) -> Any:
        return self.__class__()

    # find and return an object
    def find(self, id: int):
        strFields = self._getFieldNamesStr()

        conn = self.getConnection()
        conn.setQuery(f'SELECT {strFields} FROM {self.table} WHERE {self.primaryKey} = %s')
        conn.setVariables([id])
        conn.executeQuery()
        row = conn.getOne()

        retClass = self._getChildClass()
        for fieldName in self.fields:
            retClass._setAttrValue(fieldName, row[fieldName])

        return retClass