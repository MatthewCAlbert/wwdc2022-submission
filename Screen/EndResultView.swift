//
//  EndResultView.swift
//  DietLife
//
//  Created by Matthew Christopher Albert on 24/04/22.
//

import SwiftUI

struct EndResultView: View {
    var energyDelta: Int {
        get {
            Player.shared.currentEnergyDelta
        }
    }
    var statusText: String {
        get {
            var res = ""
            if energyDelta < 0 {
                res = "In the long term you probably will lose some weight, "
                switch Player.shared.bodyType {
                case .skinny:
                    res += "this is not really recommended, because you cannot gain weight or even lose more weight."
                case .normal:
                    res += "you just need to adjust daily needs so it can be balanced out."
                case .fat:
                    res += "this is perfect, keeping calories deficit open up possibility to lose weight."
                }
            } else if energyDelta == 0 {
                res = "Perfectly balanced as it should be, "
                switch Player.shared.bodyType {
                case .skinny:
                    res += "maybe you should to eat more."
                case .normal:
                    res += "you just need to adjust daily needs so it can be balanced out."
                case .fat:
                    res += "maybe you should cut more calories."
                }
            } else {
                res = "In the long term you probably will gain some weight, "
                switch Player.shared.bodyType {
                case .skinny:
                    res += "this is perfect, you need calories to build up weight, just don't forget to build muscles or it'll end up as fat mass."
                case .normal:
                    res += "you just need to adjust daily needs so it can be balanced out."
                case .fat:
                    res += "maybe you should cut more calories if you want to lose weight."
                }
            }
            return res
        }
    }
    
    @State var showModal = false
    @State var nextPageActive = false
    
    var body: some View {
        GeometryReader { metrics in
            VStack {
                VStack {
                    Spacer()
                    Text("The Results")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    HStack {
                        Image(systemName: "flame")
                            .foregroundColor(Color(hex: "FFB636"))
                        Text(String(format: "%d kcal", energyDelta))
                            .fontWeight(.semibold)
                    }
                        .padding(10)
                        .background(Color(hex: "7D0000"))
                        .cornerRadius(8)
                        .foregroundColor(.white)
                    VStack {
                        HStack {
                            Text("Current Type:")
                            Text(Player.shared.bodyType.rawValue)
                                .fontWeight(.bold)
                        }
                            .padding(10)
                            .background(Color.ui.light)
                            .foregroundColor(.black)
                            .cornerRadius(8)
                        Text(statusText)
                            .multilineTextAlignment(.center)
                            .padding()
                            .foregroundColor(.black)
                            .background(Color.ui.light)
                            .cornerRadius(8)
                        Text("\nDisclaimer")
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 1, trailing: 0))
                        Text("This is not a health recommender app, it's just an app to introduce some Indonesian Cuisine while also sharing the awareness of calories intake to keep your body fit. Don't forget to get enough water throughout the days. This program doesn't calculate resting energy cost.")
                            .multilineTextAlignment(.center)
                    }
                    Spacer()
                    Button(action: {
                        HapticManager.shared.impact(style: .light)
                        showModal = true
                    }){
                        HStack {
                            Text("About")
                            Image(systemName: "info.circle.fill")
                        }
                            .frame(maxWidth: 300, alignment: .center)
                            .padding()
                            .foregroundColor(.white)
                            .background(Color.ui.navButton)
                            .cornerRadius(8)
                    }
                        .sheet(isPresented: $showModal) {
                            AboutModalView()
                        }
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))
                    Text("Play again?")
                        .multilineTextAlignment(.center)
                    NavigationLink(destination: MainMenuView(), isActive: $nextPageActive) {
                        Text("Restart")
                            .frame(maxWidth: 300, alignment: .center)
                            .padding()
                            .foregroundColor(.white)
                            .background(Color.ui.navButton)
                            .cornerRadius(8)
                            .onTapGesture {
                                nextPageActive = true
                                SoundManager.shared.playSound(.shoot)
                                HapticManager.shared.impact(style: .medium)
                            }
                    }
                    Spacer()
                }
                .padding(EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 30))
            }
        }
        .foregroundColor(.white)
        .background(Color.ui.menuBg)
        .navigationBarHidden(true)
        .onAppear {
            SoundManager.shared.playSound(.tada)
        }
    }
}

struct EndResultView_Previews: PreviewProvider {
    static var previews: some View {
        EndResultView()
    }
}
