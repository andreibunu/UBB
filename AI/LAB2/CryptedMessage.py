# -*- coding: utf-8 -*-
"""
Created on Mon Mar  2 20:57:40 2020

@author: andre
"""

import numpy as np

def getLetters(CryptedMessage):
    List =[]
    for letter in CryptedMessage:
        if letter not in List and letter!="+" and letter != "-" and letter !="=" and letter!=" ":
            List.append(letter)
    return List

def Generate(List):
    Dictionary={}
    for letter in List:
        Dictionary[letter]=np.random.randint(0,15)
    return Dictionary


def checkType(CryptedMessage):
    for letter in CryptedMessage:
        if letter=="+":
            return 1
        elif letter=="-":
            return 2
        

def getWords(CryptedMessage):
    Words=[]
    word=[]
    for letter in CryptedMessage:
        if letter !="+" and letter!="-" and letter != "=" and letter!=" ":
            word.append(letter)
        else:
            w=list(word)
            Words.append(w)
            word=[]
    Words.append(word)
    return Words

def NonZeroLetters(Words, Dictionary):
    for word in Words:
        if Dictionary[word[0]]==0:
            return False
    return True
    

def transform(Words, Dict):
    Numbers=[]
    for word in Words:
        number=0
        for letter in range(0, len(word)):
            number+=Dict.get(word[letter])*pow(16, len(word)-letter-1)
        Numbers.append(number)
    return Numbers


def checkDuplicates(Dictionary):
    values=[]
    for val in Dictionary.values():
        if val not in values:
            values.append(val)
        else:
            return False
    return True

def checkN(CryptedMessage, n):
    Letters=getLetters(CryptedMessage)
    for i in range(n):
        Dictionary=Generate(Letters)
        ok=checkDuplicates(Dictionary) and NonZeroLetters(getWords(CryptedMessage), Dictionary)
        if ok:
            Numbers=transform(getWords(CryptedMessage), Dictionary)
            s=0
            if(checkType(CryptedMessage)==1):
            
                for i in range(len(Numbers)-1):
                    s+=Numbers[i]
    
            else:
                s=Numbers[0]
                for i in range(len(Numbers)-1):
                    s=s-Numbers[i]
            if(s==Numbers[len(Numbers)-1]):
                print(s, Numbers)
                print(Dictionary)
            
checkN("a+b c=de", 1000)            
        
            
    
    

