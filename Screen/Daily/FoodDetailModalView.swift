//
//  FoodDetailModalView.swift
//  DietLife
//
//  Created by Matthew Christopher Albert on 23/04/22.
//

import SwiftUI

struct FoodDetailModalView: View {
    let food: Food
    @Binding var opened: Bool
    @Binding var selected: Bool
    
    var body: some View {
        GeometryReader { metrics in
            VStack {
                Text(food.name)
                    .multilineTextAlignment(.leading)
                    .font(.title)
                    .frame(width: metrics.size.width, alignment: .leading)
                
                Image(food.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: metrics.size.width, height: (metrics.size.width * (9.0/16.0)))
                    .background(Color.ui.imageBg)
                    .clipped()
                
                HStack {
                    Image(systemName: "mappin.and.ellipse")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                    Text(food.location)
                        .font(.body)
                }
                    .padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0))
                    .frame(width: metrics.size.width, alignment: .leading)
                
                HStack {
                    Image(systemName: "flame")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                    Text(String(format: "Calories: %i kcal / serving", food.calories))
                        .font(.body)
                }
                    .frame(width: metrics.size.width, alignment: .leading)
                
                Divider()
                
                ScrollView {
                    Text(food.description)
                        .font(.body)
                        .frame(width: metrics.size.width, alignment: .leading)
                }
                
                Spacer()
                
                Button(action: {
                    if !selected {
                        Player.shared.eat(food)
                        SoundManager.shared.playSound(.crunch)
                    } else {
                        Player.shared.cancelEat(food)
                        HapticManager.shared.impact(style: .medium)
                    }
                    selected.toggle()
                    self.opened = false
                }) {
                    Text(selected ? "Remove" : "Eat This")
                        .padding(20)
                        .frame(width: metrics.size.width, alignment: .center)
                }
                    .foregroundColor(.white)
                    .background(Color.ui.selectionButton)
                    .cornerRadius(8)
            }
        }
        .foregroundColor(Color.ui.black)
        .padding(EdgeInsets(top: 30, leading: 20, bottom: 20, trailing: 20))
    }
}

struct FoodDetailModalView_Previews: PreviewProvider {
    @State static var selected = true
    
    static var previews: some View {
        FoodDetailModalView(
            food: foodExample,
            opened: .constant(true), selected: $selected
        )
    }
}
