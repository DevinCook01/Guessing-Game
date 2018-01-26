//
//  main.swift
//  Guessing Game
//
//  Created by Devin Cook on 1/23/18.
//  Copyright © 2018 Devin Cook. All rights reserved.
//

import Foundation

var guess : Int?
var tries = 1
var play : String? = "Y"
var wins = 0
var losses = 0
var maxNumber : UInt32
print("Please enter your name.")
var userName = readLine()!
print("Please enter max number to guess between.")
maxNumber = UInt32(readLine()!)!
var randomNumber = Int(arc4random_uniform(maxNumber))
while play == "Y"{
    print("Please guess a number between 1 and \(maxNumber). You have 5 guesses, \(userName). 🤔")
    guess = Int(readLine()!)
        while guess == nil{
            print("Please type a number \(userName)! 😤")
            guess = Int(readLine()!)
        }
        while guess! != randomNumber && tries <= 4{
            if randomNumber < guess! {
                print("Lower 👇")
            }
            else if randomNumber > guess! {
                print("Higher 👆")
            }
            if randomNumber == guess! {
                print("You won \(userName)! 👏")
                wins += 1
            }
            print("Guess again.")
            guess = Int(readLine()!)
            while guess == nil{
                print("Please type a number \(userName)! 😤")
                guess = Int(readLine()!)
            }
            tries += 1
    
        }
        if randomNumber == guess! {
            print("You won \(userName)! 👏")
            wins += 1
        }
        if tries == 5 && guess! != randomNumber{
            print("You ran out of tries, \(userName). 😢")
            print("The actual answer was \(randomNumber). 🤯")
            losses += 1
        }
        randomNumber = Int(arc4random_uniform(maxNumber))
        tries = 1
        print("Wins = \(wins) \nLosses = \(losses)")
        print("Would you like to play again \(userName)? Y/N")
        play = String(readLine()!).uppercased()
        while play != "Y" && play != "N"{
            print("Please enter Y or N \(userName)! 😤")
            play = String(readLine()!)
    }
    guess = Int(EMPTY)
}
print("Thanks for playing \(userName)!!! 🙌 ")





