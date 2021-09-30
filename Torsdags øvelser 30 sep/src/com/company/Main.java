package com.company;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

import static java.lang.Integer.parseInt;

public class Main
{
    static Scanner scan;
    private static String[] text;

    public static void main(String[] args) throws FileNotFoundException
    {
        File file = new File("data.txt");
        scan = new Scanner(file);

        String inputFromFile = "";

        while (scan.hasNextLine())                                // checks if theres more lines in the file
        {
            inputFromFile += scan.nextLine();                     // adds each line to the inputFromFile string.
        }

        text = inputFromFile.split(" ");                    // Creates and array of strings, where each element is a single word from the file.
        System.out.println(text.length);

        printWordsStartingWith("Ø");

        printWordsOfLength(3);


        //test dine metoder ved at kalde dem her:


    }

    private static void printWordsOfLength(int l)
    {
        boolean wordIsValid = true;

        for (String s : text) {
            if (s.length() == l) {
                if (s.contains(",") || s.contains(".")) {
                    wordIsValid = false;
                }

                if (wordIsValid) {
                    System.out.println(s);
                }
            }
        }
    }

    private static void printWordsStartingWith(String pattern)
    {
        for (String s : text) // for each word in text
        {
            if (s.startsWith(pattern) || s.startsWith(pattern.toLowerCase())) {
                System.out.println(s);
            }
        }
    }

    //TASK 1
    public void printLongestWord()
    {
        //Loop
        //counter++;
        //String longestWord;
    }


    //TASK 2
    public void printFirstHalfOfEachWord()
    {
        String s = null;
        String substring = s.substring(parseInt("src.data.txt"));
        s = ("src.data.txt");
        int length = substring.length();
        System.out.print("First half of the word is" + s.substring(Integer.parseInt(s)));
    }

    //TASK 3
    public void printMostFrequentLetter()
    {

    }

    //TASK 4
    public void printLessFrequentLetter()
    {

    }
}


