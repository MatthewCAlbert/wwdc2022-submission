//
//  Player.swift
//  WWDC22
//
//  Created by Matthew Christopher Albert on 23/04/22.
//

enum BodyType: String {
    case skinny = "Skinny"
    case normal = "Normal"
    case fat = "Fat"
}

class Player {
    
    static private(set) var shared = Player()
    
    var bodyType: BodyType = BodyType.normal
    let dailyRestingEnergy = 1600 // kkal
    var currentEnergyDelta = 0 // kkal
    var sodiumConsumed = 0
    var sugarConsumed = 0
    var currentWater = -2000
    
    private init (_ bodyType: BodyType = BodyType.normal) {
        self.bodyType = bodyType
    }
    
    static func reInit(_ bodyType: BodyType) {
        shared = Player(bodyType)
    }
    
    func getCaloriesFactored(_ calories: Int) -> Int {
        var multiplier = 1.0
        switch self.bodyType {
            case .skinny:
            multiplier = 1.0
            case .normal:
            multiplier = 1.1
            case .fat:
            multiplier = 1.25
        }
        
        return Int(Double(calories) * multiplier)
    }
    
    func eat(_ food: Food) {
        self.currentEnergyDelta += food.calories
        self.sugarConsumed += food.sugarContent
        self.sodiumConsumed += food.sodiumContent
    }
    func cancelEat(_ food: Food) {
        self.currentEnergyDelta -= food.calories
        self.sugarConsumed -= food.sugarContent
        self.sodiumConsumed -= food.sodiumContent
    }
    
    func doing(_ activity: Activity) {
        self.currentEnergyDelta -= self.getCaloriesFactored(activity.energyCost)
    }
    func cancelDoing(_ activity: Activity) {
        self.currentEnergyDelta += self.getCaloriesFactored(activity.energyCost)
    }
    
    func drink(_ mL: Int) {
        self.currentWater += mL
    }
    
}
