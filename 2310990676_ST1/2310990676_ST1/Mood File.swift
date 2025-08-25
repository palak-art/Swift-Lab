//
//  Mood File.swift
//  2310990676_ST1
//
//  Created by Student on 07/08/25.
//

import Foundation

struct Mood{
    var emoji: String
    var name: String
}

struct Activity{
    var emoji: String
    var name: String
}

struct Meal{
    var mood : Mood
    var activity : Activity
    var suggestedMeal : String
}

var meals: [Meal] = [
    Meal(mood: Mood(emoji: "😊", name: "Happy"), activity: Activity(emoji: "🪑", name: "Sedantary"), suggestedMeal: "Meal1"),
    Meal(mood: Mood(emoji: "😔", name: "Sad"), activity: Activity(emoji: "🪑", name: "Sedantary"), suggestedMeal: "Meal2"),
    Meal(mood: Mood(emoji: "😫", name: "Stressed"), activity: Activity(emoji: "🪑", name: "Sedantary"), suggestedMeal: "Meal3"),
    Meal(mood: Mood(emoji: "⚡️", name: "Energetic"), activity: Activity(emoji: "🪑", name: "Sedantary"), suggestedMeal: "Meal4"),
    
    Meal(mood: Mood(emoji: "😊", name: "Happy"), activity: Activity(emoji: "🚶🏻", name: "Light"), suggestedMeal: "Meal5"),
    Meal(mood: Mood(emoji: "😔", name: "Sad"), activity: Activity(emoji: "🚶🏻", name: "Light"), suggestedMeal: "Meal6"),
    Meal(mood: Mood(emoji: "😫", name: "Stressed"), activity: Activity(emoji: "🚶🏻", name: "Light"), suggestedMeal: "Meal7"),
    Meal(mood: Mood(emoji: "⚡️", name: "Energetic"), activity: Activity(emoji: "🚶🏻", name: "Light"), suggestedMeal: "Meal8"),

    Meal(mood: Mood(emoji: "😊", name: "Happy"), activity: Activity(emoji: "🏃🏻", name: "Moderate"), suggestedMeal: "Meal9"),
    Meal(mood: Mood(emoji: "😔", name: "Sad"), activity: Activity(emoji: "🏃🏻", name: "Moderate"), suggestedMeal: "Meal10"),
    Meal(mood: Mood(emoji: "😫", name: "Stressed"), activity: Activity(emoji: "🏃🏻", name: "Moderate"), suggestedMeal: "Meal11"),
    Meal(mood: Mood(emoji: "⚡️", name: "Energetic"), activity: Activity(emoji: "🏃🏻", name: "Moderate"), suggestedMeal: "Meal12"),
    
    Meal(mood: Mood(emoji: "😊", name: "Happy"), activity: Activity(emoji: "🏋🏻‍♀️", name: "Intense"), suggestedMeal: "Meal13"),
        Meal(mood: Mood(emoji: "😔", name: "Sad"), activity: Activity(emoji: "🏋🏻‍♀️", name: "Intense"), suggestedMeal: "Meal14"),
        Meal(mood: Mood(emoji: "😫", name: "Stressed"), activity: Activity(emoji: "🏋🏻‍♀️", name: "Intense"), suggestedMeal: "Meal15"),
        Meal(mood: Mood(emoji: "⚡️", name: "Energetic"), activity: Activity(emoji: "🏋🏻‍♀️", name: "Intense"), suggestedMeal: "Meal16")
]
