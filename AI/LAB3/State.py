# -*- coding: utf-8 -*-
"""
Created on Thu Mar  5 14:32:21 2020

@author: andre
"""
from Configuration import Configuration

class State:

    def __init__(self, n):
        self.__values = [Configuration([], n)]
        self.__dimension=n
    
    def setValues(self, values):
        self.__values = values

    def getValues(self):
        return self.__values[:]
    
    def getDimension(self):
        return self.__dimension
    def __str__(self):
        s=''
        for x in self.__values:
            s+=str(x)+"\n"
        return s

    def __add__(self, something):
        aux = State(self.__dimension)
        if isinstance(something, State):
            aux.setValues(self.__values+something.getValues())
        elif isinstance(something, Configuration):
            aux.setValues(self.__values+[something])
        else:
            aux.setValues(self.__values)
        return aux



