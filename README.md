Project Title: Word Scramble Game

Overview:
This project is a simple Word Scramble Game developed using Bash Shell Scripting on Ubuntu Linux. The program selects a random word from a predefined list, scrambles its letters, and asks the user to guess the original word. It demonstrates loops, conditionals, random number generation, and user input handling.

Objectives:

Implement an interactive game using shell scripting

Strengthen understanding of OS concepts and scripting logic

Practice user input and control structures

Tools and Technologies:

Operating System: Ubuntu Linux

Language: Bash Shell Scripting

Interface: Terminal

Algorithm:

Start the program

Define a list of words

Select a random word from the list

Scramble the letters of the word

Display the scrambled word to the user

Allow limited attempts for guessing

If correct → display success message

If incorrect → reduce attempts and give feedback

End the game when attempts are exhausted

Source Code:
#!/bin/bash

words=("linux" "ubuntu" "kernel" "script" "process" "memory" "thread")

word={words[$RANDOM % ${#words[@]}]} scrambled=(echo "$word" | fold -w1 | shuf | tr -d '\n')

echo "Welcome to Word Scramble!"
echo "Unscramble the letters to form a word."
echo "Scrambled word: $scrambled"

attempts=3
while [ attempts -gt 0 ] do read -p "Your guess: " guess if [ "$guess" == "$word" ]; then echo "Correct! You win!" exit 0 else attempts=((attempts-1))
echo "Wrong! Attempts left: $attempts"
fi
done

echo "Game Over! The correct word was: $word"

Sample Output:
Welcome to Word Scramble!
Unscramble the letters to form a word.
Scrambled word: xunli
Your guess: linux
Correct! You win!

Future Enhancements:

Add scoring system for multiple rounds

Store words in an external file

Provide hints (first/last letter)

Add a timer for difficulty

Convert into GUI-based application

Academic Details:
Submitted by: Mukul Dev Sankhla (Roll No: 243501133 [B-1])
Class / Semester: BCA – B1 / IV Sem
College: Lachoo Memorial College
Submitted to: Ashish Rai Sir (Dept. of Computer Applications)
Academic Year: 2025–2026

Conclusion:
This project provided practical exposure to shell scripting in Linux. It helped in understanding loops, conditionals, randomization, and user interaction through terminal-based programs.

THANK YOU!
