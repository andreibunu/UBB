package com.first;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.*;

class MyGrammar {
    private List<String> terminals;
    private List<String> nonterminals;
    private HashMap<String, List<List<String>>> productions;
    private String first;

    MyGrammar(String filename) throws Exception {
        this.terminals = new ArrayList<>();
        this.nonterminals = new ArrayList<>();
        this.productions = new HashMap<>();
        this.readGrammar(filename);
    }

    List<String> getTerminals() {
        return terminals;
    }

    List<String> getNonterminals() {
        return nonterminals;
    }

    HashMap<String, List<List<String>>> getProductions() {
        return productions;
    }

    String getFirst() {
        return first;
    }

    private void readGrammar(String fileName) throws Exception {
        File myObj = new File(fileName);
        Scanner myReader;
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

        if (!this.nonterminals.contains(this.first)) {
            throw new Exception("Start symbol must be a non-terminal!");
        }

        while (myReader.hasNextLine()) {
            String[] transSet = myReader.nextLine().split(",");
            String nonterminal = transSet[0];
            if (!this.nonterminals.contains(nonterminal)) {
                throw new Exception(nonterminal + " is not a non-terminal!");
            }
            List<List<String>> transSetToAdd = new ArrayList<>();
            for (int i = 1; i < transSet.length; i++) {
                ArrayList<String> oneTransition = new ArrayList<>();
                Collections.addAll(oneTransition, transSet[i].split(" "));
                transSetToAdd.add(oneTransition);
            }
            checkProductionsSet(transSetToAdd);
            this.productions.put(nonterminal, transSetToAdd);
        }
        myReader.close();
    }

    private void checkProductionsSet(List<List<String>> transSetToAdd) throws Exception {
        for (List<String> e : transSetToAdd) {
            for (String character : e) {
                if (!terminals.contains(character) && !nonterminals.contains(character)) {
                    throw new Exception(character + " is not a terminal!");
                }
            }
        }
    }

    List<List<String>> getProductionsForNonterminal(String nonTerminal) throws Exception {
        if (this.nonterminals.contains(nonTerminal))
            return this.productions.get(nonTerminal);
        throw new Exception(nonTerminal + " is not a nonterminal");
    }


}