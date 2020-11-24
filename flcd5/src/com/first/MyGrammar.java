package com.first;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.*;

public class MyGrammar {
    List<String> terminals;
    List<String> nonterminals;
    HashMap<String, List<List<String>>> productions;
    String first;

    public MyGrammar(String filename) {
        this.terminals = new ArrayList<>();
        this.nonterminals = new ArrayList<>();
        this.productions = new HashMap<>();
        this.readGrammar(filename);
    }

    public List<String> getTerminals() {
        return terminals;
    }

    public void setTerminals(List<String> terminals) {
        this.terminals = terminals;
    }

    public List<String> getNonterminals() {
        return nonterminals;
    }

    public void setNonterminals(List<String> nonterminals) {
        this.nonterminals = nonterminals;
    }

    public HashMap<String, List<List<String>>> getProductions() {
        return productions;
    }

    public void setProductions(HashMap<String, List<List<String>>> productions) {
        this.productions = productions;
    }

    public String getFirst() {
        return first;
    }

    public void setFirst(String first) {
        this.first = first;
    }

    public void readGrammar(String fileName) {
        File myObj = new File(fileName);
        Scanner myReader = null;
        try {
            myReader = new Scanner(myObj);
        } catch (FileNotFoundException e) {
            System.out.println("No such file");
            return;
        }
        String[] stateLine = myReader.nextLine().split(" ");
        Collections.addAll(this.nonterminals, stateLine);

        String[] alphaLine = myReader.nextLine().split(" ");
        Collections.addAll(this.terminals, alphaLine);

        this.first = myReader.nextLine();

        while (myReader.hasNextLine()) {
            String[] transSet = myReader.nextLine().split(",");
            String nonterminal = transSet[0];
            List<List<String>> transSetToAdd = new ArrayList<>();
            for (int i = 1; i < transSet.length; i++) {
                ArrayList<String> oneTransition = new ArrayList<>();
                Collections.addAll(oneTransition, transSet[i].split(" "));
                transSetToAdd.add(oneTransition);
            }
            this.productions.put(nonterminal, transSetToAdd);
        }
        myReader.close();
    }

    public List<List<String>> getTransitionsForNonterminal(String nonterminal){
        return this.productions.get(nonterminal);
    }
}