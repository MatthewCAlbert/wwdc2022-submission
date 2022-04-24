//
//  MainMenuView.swift
//  WWDC22
//
//  Created by Matthew Christopher Albert on 23/04/22.
//

import SwiftUI

struct MainMenuView: View {
    var body: some View {
        VStack {
            VStack{
                Spacer()
                Text("DietLife")
                    .font(.largeTitle)
                    .fontWeight(Font.Weight.bold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.white)
                Text("Indonesian Cuisine")
                    .font(.title)
                    .fontWeight(Font.Weight.light)
                    .multilineTextAlignment(.center)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
                    .foregroundColor(Color.white)
                Text("You will help the BMI type of person (named Budi) of your selection to achieve optimal diet for his days, but now he is stranded in a mountain full of Indonesian cuisine.\n\nYou will be given choices of several Indonesian diet throughout the day and activity that help him balanced out his diet.")
                    .multilineTextAlignment(.center)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 40, trailing: 0))
                NavigationLink(destination: ContentView()) {
                    Text("Play")
                        .frame(maxWidth: .infinity, alignment: .center)
                        .padding()
                        .background(Color.gray.opacity(0.25))
                        .cornerRadius(8)
                }
                Spacer()
            }
            .padding(EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 30))
        }
        .background(Color(hex: "67C7D4"))
        .navigationBarHidden(true)
    }
}

struct MainMenuView_Previews: PreviewProvider {
    static var previews: some View {
        MainMenuView()
    }
}
