//
//  MiddleEarthAgeSort.swift.swift
//  SortingAlgorithms

//  Created by Валерия Пономарева on 10.09.2025.

import Foundation

struct MiddleEarthCharacter {
    let name: String
    let race: String
    let age: Int
    let location: String
}

class MiddleEarthSorter {
    
    let characters = [
        MiddleEarthCharacter(name: "Bilbo Baggins", race: "Hobbit", age: 111, location: "Shire"),
        MiddleEarthCharacter(name: "Balin", race: "Dwarf", age: 255, location: "Erebor"),
        MiddleEarthCharacter(name: "Gandalf", race: "Wizard", age: 2019, location: "Valinor"),
        MiddleEarthCharacter(name: "Thorin Oakenshield", race: "Dwarf", age: 195, location: "Erebor"),
        MiddleEarthCharacter(name: "Dain", race: "Dwarf", age: 289, location: "Iron Hills"),
        MiddleEarthCharacter(name: "Bard", race: "Human", age: 45, location: "Long Lake")
    ]
    
    // 1. Метод для печати
    func printCharacters() {
        print("🧙‍♂️ Жители Средиземья:")
        for character in characters {
            print("\(character.name) (\(character.race)) - \(character.age) лет")
        }
    }
}

    


