//
//  MapJourney.swift
//  Hobbit-Swift-Adventures
//
//  Created by Валерия Пономарева on 04.09.2025.

import Foundation

public struct JourneyMap {
    public static let journeySteps = [
        "Hobbiton",
        "Rivendell",
        "Misty Mountains",
        "Mirkwood",
        "Lonely Mountain"
    ]
    
    // ↓ ЭТА ФУНКЦИЯ ДОЛЖНА БЫТЬ ↓
    public static func printFullJourney() {
        let map = journeySteps.enumerated().map { index, location in
            "📍 Этап \(index + 1): \(location)"
        }
        map.forEach { print($0) }
    }
    // ↑ ЭТА ФУНКЦИЯ ДОЛЖНА БЫТЬ ↑
}

