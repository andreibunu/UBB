# -*- coding: utf-8 -*-
"""
Created on Mon Mar  9 11:40:52 2020

@author: andre
"""

from Configuration import Configuration
from Problem import  Problem
from Controller import Controller




class UI:
    
    def __init__(self):
        self.__n=4
        with open('file.txt') as f:
            self.__n=int(f.readline())
    
    
    def run(self):
        c=Configuration([], self.__n)
        p=Problem(c,self.__n)
        contr=Controller(p)
        print("Solve problem with \n1. DFS\n2. Greedy\n")
        option=int(input())
        if option==1:
            state=contr.dfs()
            if c!=-1:
                c=state.getValues()[-1]
                for q in c.getValues():
                    print(q)
        else :
            state=contr.greedy()
    
ui=UI()
ui.run()
            


