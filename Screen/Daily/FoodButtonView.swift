//
//  FoodButtonView.swift
//  DietLife
//
//  Created by Matthew Christopher Albert on 23/04/22.
//

import SwiftUI

struct FoodButtonView: View {
    let food: Food
    @State var selected = false
    @State var showModal = false
    
    var body: some View {
        Button(action: {
            self.showModal = true
        }) {
            VStack(spacing: 0) {
                Image(food.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 165, height: 85)
                    .background(Color.pink)
                HStack(alignment: .center, spacing: 0) {
                    Text(food.name)
                        .frame(width: 110, height: 40, alignment: .leading)
                        .foregroundColor(.white)
                    Image(systemName: "checkmark")
                        .foregroundColor(.green)
                        .frame(width: 25, height: 25)
                        .opacity( selected ? 1.0 : 0.0 )
                }.frame(width: 165)
            }
            .border(.yellow, width: selected ? 5 : 0)
            .cornerRadius(20)
        }
        .background(Color.gray)
        .cornerRadius(20)
        .sheet(isPresented: $showModal) {
            FoodDetailModalView(food: food, opened: self.$showModal, selected: self.$selected)
        }
    }
}

struct FoodButtonView_Previews: PreviewProvider {
    static var previews: some View {
        FoodButtonView(
            food: foodExample
        )
    }
}
