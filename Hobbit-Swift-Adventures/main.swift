//
//  main.swift
//  Hobbit-Swifr-Adventures
//
//  Created by Валерия Пономарева on 03.09.2025.
//

import Foundation

// Задача: «Загадки в темноте» - 'Riddles in the Dark'
/* 1. Используй zip(), чтобы создать кортежи (gollumRiddle, correctAnswer, bilboAnswer).
    2. С помощью map создай массив строк:
    3. "Билбо ответил: 'X' на загадку 'Y' -> Правильно? true/false"
    4. Выведи результат в консоль
 
 Ожидаемый вывод:
 Билбо ответил: 'A mountain' на загадку 'What has roots...' -> Правильно? true
 Билбо ответил: 'Time' на загадку 'Voiceless it cries' -> Правильно? false
 Билбо ответил: 'A fish' на загадку 'Alive without breath' -> Правильно? true */

// Данные:
let gollumRiddles = [
    "What has roots as nobody sees?",
    "Voiceless it cries,",
    "Alive without breath"
]
let correctAnswers = [
    "A mountain",
    "The wind",
    "A fish"
]
let bilboAnswers = [
    "A mountain",
    "Time",
    "A fish"
]

// Решение:
for (index, riddle) in gollumRiddles.enumerated() {
    let isCorrect = bilboAnswers[index] == correctAnswers[index]
    print("Билбо ответил: '\(bilboAnswers[index])' на загадку '\(riddle)' -> Правильно? \(isCorrect)")
}
/*  Билбо ответил: 'A mountain' на загадку 'What has roots as nobody sees?' -> Правильно? true
    Билбо ответил: 'Time' на загадку 'Voiceless it cries,' -> Правильно? false
    Билбо ответил: 'A fish' на загадку 'Alive without breath' -> Правильно? true */

// var. 2
let results = zip(zip(gollumRiddles, correctAnswers), bilboAnswers).map {
    (($0.0, $0.1), $1)
}

for ((riddle, correct), bilbo) in results {
    let isCorrect = bilbo == correct
    print("Билбо ответил так: '\(bilbo)' на загадку '\(riddle)' -> Правильно? \(isCorrect)")
}
/*  Билбо ответил так: 'A mountain' на загадку 'What has roots as nobody sees?' -> Правильно? true
    Билбо ответил так: 'Time' на загадку 'Voiceless it cries,' -> Правильно? false
    Билбо ответил так: 'A fish' на загадку 'Alive without breath' -> Правильно? true    */

// var. 3
for index in 0..<gollumRiddles.count {
    let riddle = gollumRiddles[index]
    let bilboAnswer = bilboAnswers[index]
    let correctAnswer = correctAnswers[index]
    let isCorrect = bilboAnswer == correctAnswer
    
    print("Ответ хоббита: '\(bilboAnswer)' на загадку '\(riddle)' -> Правильно? \(isCorrect)")
}
/*  Ответ хоббита: 'A mountain' на загадку 'What has roots as nobody sees?' -> Правильно? true
    Ответ хоббита: 'Time' на загадку 'Voiceless it cries,' -> Правильно? false
    Ответ хоббита: 'A fish' на загадку 'Alive without breath' -> Правильно? true    */

//  вариант 4 - самый ПРОСТОЙ
for i in 0..<gollumRiddles.count {
    let riddle = gollumRiddles[i]
    let bilboAnswer = bilboAnswers[i]
    let correctAnswer = correctAnswers[i]
    
    // Просто сравниваем и выводим результат
    print("Bilbo says: '\(bilboAnswer)' на загадку '\(riddle)' -> Right? \(bilboAnswer == correctAnswer)")
}
/*  Bilbo says: 'A mountain' на загадку 'What has roots as nobody sees?' -> Right? true
    Bilbo says: 'Time' на загадку 'Voiceless it cries,' -> Right? false
    Bilbo says: 'A fish' на загадку 'Alive without breath' -> Right? true   */

// 📝 Что делает каждая строка:

/*  for i in 0..<3 → проходим по индексам 0, 1, 2
    gollumRiddles[i] → получаем загадку под номером i
    bilboAnswers[i] == correctAnswers[i] → сравниваем два ответа
    print(...) → выводим результат */


// Задача: «Эльфийские клинки» - 'Elven Blades'

// 1. Создай enum Sword: String с кейсами: sting, glamdring, orcrist
// 2. Добавь computed property description: String для каждого меча:
//    sting -> "Жало - меч Фродо"
//    glamdring -> "Гламдринг - меч Гэндальфа"
//    orcrist -> "Оркрист - меч Торина"
// 3. Создай массив: [Sword.sting, .glamdring, .orcrist]
// 4. С помощью map преобразуй его в массив описаний и выведи в консоль

// Ожидаемый вывод:
// ["Жало - меч Фродо", "Гламдринг - меч Гэндальфа", "Оркрист - меч Торина"]

//Задача 3: «Путь к Одинокой горе» - 'Path to Erebor'

let journeySteps = [
    "Hobbiton",
    "Rivendell",
    "Misty Mountains",
    "Mirkwood",
    "Lonely Mountain"
]

// Задача:
// 1. Используй enumerated().map() чтобы преобразовать массив в формат:
//    "✅ Этап 1: Hobbiton" для четных индексов
//    "⏳ Этап 2: Rivendell" для нечетных индексов
// 2. Выведи результат в консоль

// Ожидаемый вывод:
// ✅ Этап 1: Hobbiton
// ⏳ Этап 2: Rivendell
// ✅ Этап 3: Misty Mountains
// ⏳ Этап 4: Mirkwood
// ✅ Этап 5: Lonely Mountain

// ужас ужасный!!!
