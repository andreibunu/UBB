package com.first;

public class Main {

    public static void main(String[] args) {
        STHashTable stHashTable = new STHashTable(113);
        stHashTable.insert("Bunu");
        stHashTable.insert("Radu");
        stHashTable.insert("Andrei");
        stHashTable.insert("ierdnA");
        stHashTable.insert("12");
        stHashTable.insert("a");
        stHashTable.insert("123");
        stHashTable.insert("123");
        stHashTable.insert("-3");
        stHashTable.insert("prime");

        stHashTable.printTable();
    }
}
