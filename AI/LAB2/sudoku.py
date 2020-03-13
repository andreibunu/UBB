# -*- coding: utf-8 -*-
"""
Spyder Editor

This is a temporary script file.
"""
import numpy as np
import copy
import math
import matplotlib.pyplot as plt

plt.plot([0, 0, 1, 3, 0, 5], 'ro')
plt.axis([-1, 10, 0, 20])
plt.ylabel('some numbers')
#plt.show()


Sudoku = [[0 for x in range(4)] for y in range(4)] 
Sudoku[0][0]=3
Sudoku[0][3]=2
Sudoku[1][1]=1
Sudoku[1][2]=4
Sudoku[2][0]=1
Sudoku[2][1]=2
Sudoku[2][3]=4
Sudoku[3][1]=3
Sudoku[3][2]=2
Sudoku[3][3]=1
Sudoku = [[x for x in range(4)] for y in range(4)] 
    
def generateSolution(Sudoku):
    n=len(Sudoku)
    Copy=copy.deepcopy(Sudoku)
    for i in range(n):
        for j in range(n):
            if Copy[i][j]==0:
                something=np.random.randint(1,n,1)
                np.random.shuffle(something)
                Copy[i][j]=something[0]
    return Copy
                
                
        

def checkBoard(Sudoku):
    n=len(Sudoku)
    """
    check lines
    """ 
    
    
    for i in range(n):
        numbers=[]
        for j in range(n):
            if Sudoku[i][j] not in numbers:
                numbers.append(Sudoku[i][j])
            else:
                return False
                
    
    """
    #check coloumns
    """
    
    
    for i in range(n):
        numbers=[]
        for j in range(n):
            if Sudoku[j][i] not in numbers:
                numbers.append(Sudoku[j][i])
            else :
                return False
    


    for i in range(0,n,int(math.sqrt(n))):
        for j in range(0,n,int(math.sqrt(n))):
            numbers=[]
            for ii in range(i, i+int(math.sqrt(n))):
                for jj in range (j, j+int(math.sqrt(n))):
                    if Sudoku[ii][jj] in numbers:    
                        return False
                    else:
                        numbers.append(Sudoku[ii][jj])
    return True


  
  
WellDoneSudoku=[[1,2,3,4],
                [3,4,1,2],
                [2,1,4,3],
                [4,3,2,1]]

  

def checkN(Sudoku, n):
    for i in range(n):
        x=generateSolution(Sudoku)
        if checkBoard(x):
            for i in range(len(x)):
                print(x[i])
            print("\n")
            
            
            



  

  
  
  
  
