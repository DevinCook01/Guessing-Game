//
//  main.swift
//  Guessing Game
//
//  Created by Devin Cook on 1/23/18.
//  Copyright © 2018 Devin Cook. All rights reserved.
//

import Foundation

//Generate a random number
var randomNumber = Int(arc4random_uniform(100))
var guess : Int?
//Ask user input
print("Please guess a number between 1 and 100. You have 5 guesses.")
//Take user input
for _ in 0...4{
    guess = Int(readLine()!)!
    if randomNumber == guess! {
    print("Winner! 👏")
        break
} else if randomNumber < guess! {
    print("Lower 👇")
} else {
    print("Higher 👆")
}}
print("The actual answer was \(randomNumber)")
//Determine wrong or right(Loop until right)

//If correct ask if they want to play again

//If incorrect tell them the correct answer and ask them to play



