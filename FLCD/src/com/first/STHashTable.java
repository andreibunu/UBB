package com.first;

public class STHashTable {
    private SLNode[] table;

    public SLNode[] getTable() {
        return table;
    }

    public STHashTable(int tableSize) {
        table = new SLNode[tableSize];
    }

    public void insert(String val) {
        if(!contains(val)) {
            int pos = myHash(val);
            SLNode newElement = new SLNode(val);
            if (table[pos] == null)
                table[pos] = newElement;
            else {
                newElement.next = table[pos];
                table[pos] = newElement;
            }
        }
    }

    private boolean contains(String val) {
        int pos = myHash(val);
        if(this.table[pos]==null)
            return false;
        SLNode node = table[pos];
        while(node!=null){
            if(node.symbol.equals(val))
                return true;
            node = node.next;
        }
        return false;
    }

    public int myHash(String something) {
        int sumOfAscii = 0;
        for (Character ch : something.toCharArray()) {
            sumOfAscii += ch;
        }
        return sumOfAscii % table.length;
    }

    public void printTable() {
        int index = 0;
        for (SLNode lst : this.getTable()) {
            if (lst == null) {
                System.out.println("Index " + index + ":");
            } else {
                System.out.println("Index " + index + ": " + lst.printList());
            }
            index++;
        }
    }

}
