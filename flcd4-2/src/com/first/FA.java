package com.first;

import javafx.util.Pair;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Scanner;

public class FA {
    private ArrayList<String> states;
    private ArrayList<String> alphavet;
    private ArrayList<String> finalState;
    private String initialState;
    private HashMap<Pair<String, String>, String> transitions;

    public FA(String fileName) {
        this.states = new ArrayList<>();
        this.alphavet = new ArrayList<>();
        this.finalState = new ArrayList<>();
        this.transitions = new HashMap<>();
        initializeFA(fileName);
        if(checkIfDeterministic()){
            System.out.println("");
        }
    }

    private boolean checkIfDeterministic() {
        ArrayList<Pair<String, String>> delta= new ArrayList<>();
        for(Pair<String, String> pair: this.transitions.keySet()){
            String state = pair.getKey();
            Pair<String, String> deltaPair = new Pair(state, this.transitions.get(pair));
            if(delta.contains(deltaPair))
                return false;
            delta.add(deltaPair);
        }
        return true;
    }

    private void initializeFA(String fileName) {
        File myObj = new File(fileName);
        Scanner myReader = null;
        try {
            myReader = new Scanner(myObj);
        } catch (FileNotFoundException e) {
            System.out.println("No such file");
            return;
        }
        String[] stateLine = myReader.nextLine().split(" ");
        Collections.addAll(this.states, stateLine);

        String[] alphaLine = myReader.nextLine().split(" ");
        Collections.addAll(this.alphavet, alphaLine);
        this.initialState = myReader.nextLine();
        String[] fstates = myReader.nextLine().split(" ");
        Collections.addAll(this.finalState, fstates);

        while (myReader.hasNextLine()) {
            String[] trans = myReader.nextLine().split(" ");
            Pair pair = new Pair(trans[0], trans[1]);
            this.transitions.put(pair, trans[2]);
        }
        myReader.close();
    }

    public ArrayList<String> getStates() {
        return states;
    }


    public ArrayList<String> getAlphavet() {
        return alphavet;
    }


    public String getInitialState() {
        return initialState;
    }


    public ArrayList<String> getFinalState() {
        return finalState;
    }


    public HashMap<Pair<String, String>, String> getTransitions() {
        return transitions;
    }

}
