package com.first;

public class SLNode {
    private String symbol;
    private SLNode next;

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

    public String getSymbol() {
        return symbol;
    }

    public void setSymbol(String symbol) {
        this.symbol = symbol;
    }

    public SLNode getNext() {
        return next;
    }

    public void setNext(SLNode next) {
        this.next = next;
    }
}
