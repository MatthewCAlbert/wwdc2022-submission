//
//  Food.swift
//  DietLife
//
//  Created by Matthew Christopher Albert on 23/04/22.
//

struct Food {
    var name: String
    var calories: Int // kkal
    var sugarContent: Int // mg/dL
    var sodiumContent: Int // mEq/L
    var imageName: String = "skinny"
    var location: String = ""
    var description:  String = ""
}

class FoodList {
    
    static let morning = [
        Food(
            name: "Sate Ayam",
            calories: 300, sugarContent: 20, sodiumContent: 20,
            location: "Bandung, West Java",
            description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin neque quis cum aliquam. Est eu in enim et sociis urna tortor ut. Feugiat lectus egestas tellus placerat tellus, id scelerisque fringilla ultrices. Blandit in cursus mi convallis elementum fames nisi sollicitudin."
        )
    ]
    
    static let afternoon = [
        Food(
            name: "Sate Ayam",
            calories: 300, sugarContent: 20, sodiumContent: 20,
            location: "Bandung, West Java",
            description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin neque quis cum aliquam. Est eu in enim et sociis urna tortor ut. Feugiat lectus egestas tellus placerat tellus, id scelerisque fringilla ultrices. Blandit in cursus mi convallis elementum fames nisi sollicitudin."
        )
    ]
    
    static let evening = [
        Food(
            name: "Sate Ayam",
            calories: 300, sugarContent: 20, sodiumContent: 20,
            location: "Bandung, West Java",
            description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin neque quis cum aliquam. Est eu in enim et sociis urna tortor ut. Feugiat lectus egestas tellus placerat tellus, id scelerisque fringilla ultrices. Blandit in cursus mi convallis elementum fames nisi sollicitudin."
        )
    ]
    
}


let foodExample = Food(
    name: "Sate Ayam",
    calories: 300, sugarContent: 20, sodiumContent: 20,
    location: "Bandung, West Java",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin neque quis cum aliquam. Est eu in enim et sociis urna tortor ut. Feugiat lectus egestas tellus placerat tellus, id scelerisque fringilla ultrices. Blandit in cursus mi convallis elementum fames nisi sollicitudin."
)
