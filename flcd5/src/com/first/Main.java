package com.first;

import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
	// write your code here

        MyGrammar myGrammar= new MyGrammar("C:\\Users\\andre\\andyMK\\flcd5\\src\\com\\first\\grammar.in");
        while(true){
            System.out.println("1. See terminals\n2. See onnterminals\n3. See all productions\n4. See productions for a nonterminal\n5.Exit\n");
            Scanner in = new Scanner(System.in);
            String option = in.nextLine();
            if(option.equals("1")){
                System.out.println(myGrammar.getTerminals());
            }
            if(option.equals("2")){
                System.out.println(myGrammar.getNonterminals());
            }
            if(option.equals("3")){
                System.out.println(myGrammar.getProductions());
            }
            if(option.equals("4")){
                String nonterminal = in.nextLine();
                System.out.println(myGrammar.getTransitionsForNonterminal(nonterminal));
            }
            if(option.equals("5")){
                break;
            }


        }

    }
}
