package com.first;

public class SLNode {
    public String symbol;
    public SLNode next;

    public SLNode(String something){
        this.symbol = something;
        this.next = null;
    }

    public String printList(){
        if(next!=null) {
            return symbol+"->"+next.printList();
        }
        return symbol;
    }
}
