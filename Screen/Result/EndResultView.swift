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
    
    var body: some View {
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
                Text(statusText)
                    .multilineTextAlignment(.center)
                Spacer()
                Text("Play again?")
                    .multilineTextAlignment(.center)
                NavigationLink(destination: MainMenuView()) {
                    Button(action: {
                    }) {
                        Text("Restart")
                    }
                        .frame(maxWidth: 300, alignment: .center)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.ui.navButton)
                        .cornerRadius(8)
                }
                Spacer()
            }
            .padding(EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 30))
        }
        .foregroundColor(.white)
        .background(Color.ui.menuBg)
        .navigationBarHidden(true)
    }
}

struct EndResultView_Previews: PreviewProvider {
    static var previews: some View {
        EndResultView()
    }
}
