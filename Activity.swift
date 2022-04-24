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
        Activity(name: "Morning Run", energyCost: 300),
        Activity(name: "Meditating", energyCost: 300)
    ]
    
    static let afternoon = [
        Activity(name: "ahaha", energyCost: 300)
    ]
    
    static let evening = [
        Activity(name: "ahaha", energyCost: 300)
    ]
    
}
