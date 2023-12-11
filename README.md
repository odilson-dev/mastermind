# Mastermind
Mastermind is a command line game where you have 12 turns to guess the secret code, starting with you guessing the computer’s random code.

It is a classic code-breaking board game for two players, one who creates a secret code and the other who attempts to guess the code. Here's how to play Mastermind:

Objective:

The code-creator creates a secret code consisting of a sequence of colored pegs (usually 4 to 6 pegs) from a set of available colors.
The code-breaker's objective is to guess the secret code within a certain number of attempts.

Setup:

Decide who will be the code-creator and who will be the code-breaker.
Choose the number of pegs in the code (usually 4) and the set of available colors. Commonly, there are 6 different colors to choose from.

Gameplay:

The code-creator selects a secret code without revealing it to the code-breaker.
The code-breaker makes an initial guess by arranging colored pegs in a specific order on a board.
The code-creator provides feedback after each guess by using two types of markers:
Black pegs: These are placed to indicate that a peg is the correct color and in the correct position.
White pegs: These are placed to indicate that a peg is the correct color but in the wrong position.
No pegs: If none are given, it means there are no correct colors in the guess.
The code-breaker continues to make guesses, taking into account the feedback received, until they either guess the correct code or reach a predetermined limit of attempts.

Winning:

The code-breaker wins if they guess the secret code within the specified number of attempts.
The code-creator wins if the code-breaker exhausts all attempts without correctly guessing the code.
Example:
Let's say there are 4 pegs and 6 colors (represented by numbers 1 to 6).

Secret Code: 2 4 1 6
Code-Breaker's Guess: 3 1 5 6
Feedback: Black White NoPeg NoPeg
"Black" means one peg (color 1) is correct and in the correct position.
"White" means one peg (color 6) is correct but in the wrong position.
"NoPeg" indicates that the other two colors are not in the secret code.
The code-breaker continues making guesses and adjusting based on feedback until they either guess the secret code or run out of attempts.

Mastermind is a game of logic, deduction, and strategy, and it can be a fun and challenging activity for players of all ages.

# Link Course
https://www.theodinproject.com/lessons/ruby-mastermind

# GitHub repo link
https://github.com/odilsonjs/Mastermind

# Replit link
https://replit.com/@odilsonjs/Project-Mastermind?v=1