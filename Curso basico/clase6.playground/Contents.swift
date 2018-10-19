//: Playground - noun: a place where people can play

import UIKit

func cookLunch(choice: String) -> String {
    
    if choice == "pasta" {
        return "🍝"
    } else if choice == "hamburguesa" {
        return "🍔"
    } else {
        return "🍲"
    }
}

cookLunch(choice: "pasta")


enum LunchChoice{
    case pasta
    case burger
    case soup
    case pozole
    case arepas
    case tacos
    
    var emoji: String {
        switch self {
        case .pasta:
            return "🍝"
        case .burger:
            return "🍔"
        case .soup:
            return "🍜"
        case .pozole:
            return "🇲🇽"
        case .arepas:
            return "🇨🇴"
        case .tacos:
            return "🌮"

       
        }
    }
    
}


let choice = LunchChoice.pasta
choice.emoji

var choice2: LunchChoice

choice2 = .arepas


switch choice2 {
case .pasta:
    "🍝"
case .burger:
    "🍔"
case .soup:
    "🍜"
case .pozole:
    "🇲🇽"
case .arepas:
    "🇨🇴"
case .tacos:
    "🌮"
}

let animal = "perro"

func soundFor(animal: String) ->String{
    switch animal {
    case "gato":
        return "¡Miau!"
    case "perro":
        return "¡Guau!"
    case "vaca":
        return "¡Muuuuu!"
    case "gallo":
        return "¡Quiquiriqui!"
    default:
       return "No sé que animal es ese."
    }
}

soundFor(animal: animal)
soundFor(animal: "gallo")
soundFor(animal: "ajolote")
soundFor(animal: "tlacuache")
soundFor(animal: "gato")

enum Suit {
    case spades, hearts, diamonds, clubs
    
    var rank: Int{
        switch self {
        case .spades: return 4
        case .hearts: return 3
        case .diamonds: return 2
        case .clubs: return 1
       
        }
    }
    func beats(_ otherSuit: Suit) -> Bool{
        return self.rank > otherSuit.rank
    }
}

let oneSuit = Suit.spades
let otherSuit = Suit.clubs
oneSuit.beats(otherSuit)
oneSuit.beats(oneSuit)















