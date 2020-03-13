# -*- coding: utf-8 -*-
"""
Created on Wed Mar  4 19:08:33 2020

@author: andre
"""
import numpy as np
import CryptedMessage
import Tetris 
import sudoku





def choose():
    while True:
        print("1. susdoku\n2. Crypted Message\n3. Tetrix\n")    
        option=int(input())
        print("How many times do you want to try?\n")
        n=int(input())
        if option==1:
            f = open ( 'sudoku_input.txt' , 'r')    
            Sudoku= np.loadtxt("sudoku_input.txt", dtype='i', delimiter=' ')
            sudoku.checkN(Sudoku, n)
        elif option==2:
            with open('CryptedMessage.txt', 'r') as myfile:
                data = myfile.read()
            CryptedMessage.checkN(data, n)
        elif option==4:
            Tetris.checkN(n)
        else:
            break
        
        
        
        
choose()