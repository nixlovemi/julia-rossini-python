# abstract base class work
from abc import ABC, abstractmethod

class BaseEntity(ABC):
 
    # eu pego os atributos da classe
    # e crio um Dict com eles
    def toObject(self):
        retDict = {}
        for attribute in self.__dict__.keys():
            if attribute[:2] != '__':
                value = getattr(self, attribute)
                if not callable(value):
                    # print(attribute, '=', value)
                    # removing first char "_" from attribute
                    retDict[attribute[1:]] = value

        return retDict