//
//  MainMenuView.swift
//  WWDC22
//
//  Created by Matthew Christopher Albert on 23/04/22.
//

import SwiftUI

struct MainMenuView: View {
    @State var nextPageActive = false
    
    var body: some View {
        GeometryReader { metrics in
            ZStack {
                ZStack {}
                .frame( maxWidth: .infinity, maxHeight: .infinity)
                .background(Image("menuBg").resizable().aspectRatio(contentMode: .fill))
                .ignoresSafeArea()
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
                    VStack {
                        Text("You will help the BMI (Body Measured Index) type of person (named Budi) of your selection to achieve an optimal diet for his days. Assuming he can teleport anywhere as long it's in Indonesia.\n\nYou will be given choices of several Indonesian diets throughout the day and activities that help him balance out his diet.")
                            .multilineTextAlignment(.center)
                            .padding()
                        Text("All activity and food options that will be given are multichoice, you can skip them if you want. Make sure you discover all foods.")
                            .multilineTextAlignment(.center)
                            .padding()
                    }
                        .background(Color.ui.light)
                        .foregroundColor(.black)
                        .cornerRadius(8)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
                    NavigationLink(destination: SetupScreenView(), isActive: $nextPageActive) {
                        Text("Play")
                            .frame(maxWidth: 300, alignment: .center)
                            .padding()
                            .background(Color.ui.navButton)
                            .cornerRadius(8)
                            .onTapGesture {
                                nextPageActive = true
                                SoundManager.shared.playSound(.flip)
                                HapticManager.shared.impact(style: .medium)
                            }
                    }
                    Spacer()
                }
                .foregroundColor(Color.white)
                .padding(EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 30))
            }
        }
        .background(Color.ui.menuBg)
        .navigationBarHidden(true)
    }
}

struct MainMenuView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            VStack {
                MainMenuView()
            }
            VStack {
                MainMenuView()
            }
            .previewDevice("iPad Pro (11-inch) (3rd generation)")
        }
    }
}
