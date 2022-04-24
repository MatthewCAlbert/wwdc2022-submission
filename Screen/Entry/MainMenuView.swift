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
                Text("Indonesian Cuisine")
                    .font(.title)
                    .fontWeight(Font.Weight.light)
                    .multilineTextAlignment(.center)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
                Text("You will help the BMI type of person (named Budi) of your selection to achieve optimal diet for his days, but now he is stranded in a mountain full of Indonesian cuisine.\n\nYou will be given choices of several Indonesian diet throughout the day and activity that help him balanced out his diet.")
                    .multilineTextAlignment(.center)
                Text("\nAll activity and food options that will be given are multichoice, you can skip if you want. Make sure you discover all foods.")
                    .multilineTextAlignment(.center)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 40, trailing: 0))
                NavigationLink(destination: SetupScreenView()) {
                    Text("Play")
                        .frame(maxWidth: 300, alignment: .center)
                        .padding()
                        .background(Color.ui.navButton)
                        .cornerRadius(8)
                }
                Spacer()
            }
            .foregroundColor(Color.white)
            .padding(EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 30))
        }
        .background(Color.ui.menuBg)
        .navigationBarHidden(true)
    }
}

struct MainMenuView_Previews: PreviewProvider {
    static var previews: some View {
        MainMenuView()
    }
}
