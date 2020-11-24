package com.first;

import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        // write your code here

        try {
            MyGrammar myGrammar = new MyGrammar("C:\\Users\\andre\\andyMK\\flcd5\\src\\com\\first\\grammar.in");

            while (true) {
                System.out.println("1. See terminals\n2. See onnterminals\n3. See all productions\n4. See productions for a nonterminal\n5.See start symbol\n6. Exit");
                Scanner in = new Scanner(System.in);
                String option = in.nextLine();
                if (option.equals("1")) {
                    System.out.println(myGrammar.getTerminals());
                }
                if (option.equals("2")) {
                    System.out.println(myGrammar.getNonterminals());
                }
                if (option.equals("3")) {
                    System.out.println(myGrammar.getProductions());
                }

                if (option.equals("4")) {
                    String nonterminal = in.nextLine();
                    try {
                        System.out.println(myGrammar.getProductionsForNonterminal(nonterminal));
                    }catch (Exception e){
                        System.out.println(e);
                    }
                }
                if (option.equals("5")) {
                    System.out.println(myGrammar.getFirst());
                }
                if (option.equals("6")) {
                    break;
                }
            }
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}
