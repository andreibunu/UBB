# -*- coding: utf-8 -*-
"""
Created on Mon Mar  9 08:49:59 2020

@author: andre
"""

from Problem import Problem
from State import State
class Controller:
    def __init__(self, prob):
        self.__problem=prob
        
    def BFS(self):
        q = [State(self.__problem.getDimension())]
        
        n=self.__problem.getDimension()
        while len(q)!=0:

            currentState = q.pop()
            c=currentState.getValues()[-1]
    
            if len(currentState.getValues())==n+1:
                c=currentState.getValues()[-1]
                for queen in c.getValues():
                    print(queen)
                print("\n")
                return None

            best,lst=self.__problem.expand(currentState)
            q=q+lst
            
            
    def greedy(self):
        q = [State(self.__problem.getDimension())]
        
        n=self.__problem.getDimension()
        while len(q)!=0:

            currentState = q.pop()
            c=currentState.getValues()[-1]


            if len(currentState.getValues())==n+1:
                return currentState

            best,ml=self.__problem.expand(currentState)
            q=best
            if len(ml)==1:
                return -1
            
            
    def dfs(self):
        stk=[State(self.__problem.getDimension())]
        visited = []
        while len(stk) > 0:
            node = stk.pop()
            if len(node.getValues())-1==node.getDimension():
                return node
            visited.append(node)
            b,sts = self.__problem.expand(node)
            aux=[]
            for s in sts:
                if s not in visited:
                    aux.append(s)
            stk=stk+aux
        return -1
                        
        
        
        