# -*- coding: utf-8 -*-
from Configuration import Configuration
from State import State
class Problem:
    def __init__(self, initial, n):
        self.__initialConfig = initial    #CONFIG TYPE
        self.__dimension=n
        self.__initialState = State(self.__dimension)
        self.__initialState.setValues([self.__initialConfig])  #CHANGE HERE BACK INTO BRACKETS 
        

    def expand(self, currentState):   #state
        myList = []
        currentConfig = currentState.getValues()[-1]  
        maxPossibility=0
        best=currentState
        ok=0
        for x in currentConfig.nextConfig():
            s=currentState+x
            if self.heuristics(s)>maxPossibility:
                maxPossibility=self.heuristics(s)
                best=s
                ok=1
            
            myList.append(currentState+x)
        
        
        return [best],myList

    def getRoot(self):
        return self.__initialState
    
    def getDimension(self):
        return self.__dimension
    

    def heuristics(self, state):
        queens=state.getValues()[-1]   #configuration
        numberOfQueens=len(state.getValues())
        dimension=state.getDimension()
        
        
        free_squares=0
        for i in range(numberOfQueens-2, dimension):
            for j in range(dimension):
                #going through all the squares from the next line
                if queens.check(i,j):
                    free_squares+=1
        return free_squares
    
    

    
    
                
    
