package com.first;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {

    public static void main(String[] args) throws IOException {
	// write your code here
        FA fa = new FA("C:\\Users\\andre\\andyMK\\flcd4\\src\\com\\first\\fa.in");
        while(true){
            System.out.println("1. Show the states\n2. Show the alphabet\n3. Show the transitions\n4. Show initial state\n5. Show final state\n");
            BufferedReader reader =
                    new BufferedReader(new InputStreamReader(System.in));

            // Reading data using readLine
            String input = reader.readLine();
            if(input.equals("1")){
                System.out.println(fa.getStates());
            }
            if(input.equals("2")){
                System.out.println(fa.getAlphavet());
            }
            if(input.equals("3")){
                System.out.println(fa.getTransitions());
            }
            if(input.equals("4")){
                System.out.println(fa.getInitialState());
            }
            if(input.equals("5")){
                System.out.println(fa.getFinalState());
            }
            if(input.equals("0")){
                break;
            }

        }
    }
}
