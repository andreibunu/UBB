# -*- coding: utf-8 -*-
"""
Created on Wed Mar  4 20:02:51 2020

@author: andre
"""


import numpy as np
import matplotlib.pyplot as plt
import random as r

def showmenu():
    print("1.Binomial Distribution ")
    print("2.Poisson Distribution ")
    print("3.Bernoulli Distribution ")
    print("4.Exit")


def choose():
    print("choose your distribution")
    choice= int(input())
    return choice 

def binomiall():
    n,p=10,0.5
    binomi=np.random.binomial(n,p, r.randint(0,100))
    plt.plot(binomi,'ro')
    plt.ylabel('binomial distribution')
    plt.axis([0,20,0,20])
    plt.show()



def bernoulli():
    s=np.random.binomial(10,0.5,1000)
    plt.plot(s,'ro')
    plt.ylabel('bernoulli distribution')
    plt.axis([0,20,0,20])
    plt.show()

    
def poisson():
    s=np.random.poisson(5, 10000)
    plt.plot(s,'ro')
    plt.ylabel('poisson distribution')
    plt.axis([0,30,0,30])
    plt.show()
    
def main():
    showmenu()
    choice=choose()
    while choice != 4:
        if choice == 1:
            binomiall()
        elif choice == 2: 
            poisson()
        elif choice == 3:
            bernoulli()
        else:
            break
        showmenu()
        choice=choose()

main()