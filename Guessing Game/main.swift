//
//  main.swift
//  Guessing Game
//
//  Created by Devin Cook on 1/23/18.
//  Copyright © 2018 Devin Cook. All rights reserved.
//

import Foundation

var randomNumber = Int(arc4random_uniform(100))
var guess : Int?
var tries = 1
var play = "Y"
while play == "Y" || play == "y"{
    print("Please guess a number between 1 and 100. You have 5 guesses.")
    guess = Int(readLine()!)!
    while guess! != randomNumber && tries < 5{
        if randomNumber < guess! {
                print("Lower 👇")
        }
        else if randomNumber > guess! {
                print("Higher 👆")
        }
        if randomNumber == guess! {
            print("Winner! 👏")
        }
        print("Guess again.")
        guess = Int(readLine()!)!
        tries += 1
    }
    print("The actual answer was \(randomNumber). 🤯")
    randomNumber = Int(arc4random_uniform(100))
    tries = 1
    print("Would you like to play again? Y/N")
    play = readLine()!
    guess = Int(EMPTY)
}
print("Thanks for playing!!! 🙌 ")





