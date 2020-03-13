# -*- coding: utf-8 -*-
"""
Created on Sun Mar  8 15:22:58 2020

@author: andre
"""
from copy import deepcopy
class Configuration:

    
    def __init__(self, positions,n):
        self.__numberOfQueens = len(positions)
        self.__values = positions[:]   #={ (0,0), (1,3), (2,4) , (3,0->n)}
        self.__n=n
    
    def getSize(self):
        return self.__n
    
    def getValues(self):
        return self.__values[:]

    def check(self,i,j):
        for each in self.__values:
            if each[1]==j:
                return False
            if each[0]==i:
                return False
            if abs(each[0]-i)-abs(each[1]-j)==0:
                return False
        return True
            

    def nextConfig(self):

        nextC = []
        nextLine=self.__numberOfQueens
        for j in range(self.__n):

            if self.check(nextLine, j)==True:
                
                aux=deepcopy(self.__values)
                aux.append((nextLine, j))
                nextC.append(Configuration(aux,self.__n))
        
        return nextC

    def __eq__(self, other):
        if not isinstance(other, Configuration):
            return False
        if self.__size != other.getSize():
            return False
        for i in range(self.__size):
            if self.__values[i] not in other.getValues():
                return False
        return True
        
    
    def __str__(self):
        return str(self.__values)
    
    
