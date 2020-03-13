# -*- coding: utf-8 -*-
"""
Created on Mon Mar  2 23:40:57 2020

@author: andre
"""
import numpy as np
board=[[0 for x in range(6)] for y in range(5)] 





def addFig1(i,j, board):
    for k in range(j, j+4):
        board[i][k]+=1
            
            
def addFig2(i, j, board):
    board[i][j]+=1
    board[i][j+2]+=1
    for k in range(j, j+3):
        board[i+1][k]+=1
            
def addFig3(i, j, board):
        board[i][j]+=1
        for k in range(j, j+3):
            board[i+1][k]+=1              
            
def addFig4(i, j, board):
        board[i+1][j+2]+=1
        for k in range(j, j+3):
            board[i][k]+=1              

def addFig5(i, j, board):
        board[i][j+1]+=1
        for k in range(j, j+3):
            board[i+1][k]+=1  
                

def generateSolution():
    board=[[0 for x in range(6)] for y in range(5)] 
    i1=np.random.randint(0,4)
    j1=np.random.randint(0,2)
    addFig1(i1, j1, board)
    
    i2=np.random.randint(0,3)
    j2=np.random.randint(0,3)
    addFig2(i2,j2,board)
    
    i3=np.random.randint(0,3)
    j3=np.random.randint(0,3)
    addFig3(i3,j3,board)
    
    i4=np.random.randint(0,3)
    j4=np.random.randint(0,3)
    addFig4(i4,j4,board)
    
    i5=np.random.randint(0,3)
    j5=np.random.randint(0,3)
    addFig5(i5,j5,board)
    
    isSol=1
    
    for i in range(5):
        for j in range(6):
            if board[i][j]!=1 and board[i][j]!=0:
                isSol=0
                
    if isSol==1:
        for k in range(j1, j1+4):
            board[i1][k]=1
            
        board[i2][j2]=2
        board[i2][j2+2]=2
        for k in range(j2, j2+3):
            board[i2+1][k]=2
            
        board[i3][j3]=3
        for k in range(j3, j3+3):
            board[i3+1][k]=3         
    
    
        board[i4+1][j4+2]=4
        for k in range(j4, j4+3):
            board[i4][k]=4
        
        board[i5][j5+1]=5
        for k in range(j5, j5+3):
            board[i5+1][k]=5
            
        for line in board:
            print(line)
            
            
def checkN(n):
    for i in range(n):
        generateSolution()
    
    
    
    
    