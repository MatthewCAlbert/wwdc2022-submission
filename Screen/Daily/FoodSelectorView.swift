//
//  FoodSelectorView.swift
//  DietLife
//
//  Created by Matthew Christopher Albert on 23/04/22.
//

import SwiftUI

struct FoodSelectorView: View {
    let foods: [Food]
    
    var body: some View {
        GeometryReader { metrics in
            ScrollView {
                LazyVGrid(
                    columns: Array(
                        repeating: .init(.adaptive(minimum: 160)),
                        count: 2
                    ),
                    alignment: .center
                ) {
                    ForEach(foods, id: \.name) { food in
                        FoodButtonView(
                            food: food
                        )
                    }
                }
                .frame(width: metrics.size.width, height: metrics.size.height)
            }
        }
    }
}

struct FoodSelectorView_Previews: PreviewProvider {
    static let foods = (0...3).map({ i -> Food in
        let f = foodExample
        return Food(name: f.name + String(i), calories: f.calories, imageName: f.imageName, location: f.location, description: f.description)
    })
    
    static var previews: some View {
        Group {
            VStack {
                FoodSelectorView(foods: foods)
            }
            .padding(20)
            VStack {
                FoodSelectorView(foods: foods)
            }
            .previewDevice("iPad Pro (11-inch) (3rd generation)")
            .padding(20)
        }
    }
}
