//
//  Activity.swift
//  DietLife
//
//  Created by Matthew Christopher Albert on 23/04/22.
//

struct Activity {
    var name: String
    var energyCost: Int // kkal
    
}

class ActivityList {
    
    static let morning = [
        Activity(name: "Morning Run", energyCost: 400),
        Activity(name: "Meditation", energyCost: 45),
        Activity(name: "30-min Weightlifting", energyCost: 110),
        Activity(name: "30-min Cardio", energyCost: 400),
        Activity(name: "2-hour Cycling", energyCost: 1200),
        Activity(name: "Scrolling Social Media", energyCost: 200)
    ]
    
    static let afternoon = [
        Activity(name: "4-hour Coding", energyCost: 1100),
        Activity(name: "4-hour Farming", energyCost: 1200),
        Activity(name: "4-hour Farming (Animal)", energyCost: 1600),
        Activity(name: "Building a House", energyCost: 1600),
        Activity(name: "Motorcycle Touring", energyCost: 1600),
        Activity(name: "Scrolling Social Media", energyCost: 200),
        Activity(name: "Watching Movies", energyCost: 100)
    ]
    
    static let evening = [
        Activity(name: "Reading Books", energyCost: 150),
        Activity(name: "Meditation", energyCost: 45),
        Activity(name: "Evening Run", energyCost: 300),
        Activity(name: "Scrolling Social Media", energyCost: 200),
        Activity(name: "Watching Movies", energyCost: 100)
    ]
    
}
