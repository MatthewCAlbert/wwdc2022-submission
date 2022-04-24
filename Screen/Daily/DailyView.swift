//
//  DailyView.swift
//  
//
//  Created by Matthew Christopher Albert on 23/04/22.
//

import SwiftUI

struct DailyView: View {
    let targetViewIndex: Int
    let title: String
    let backgroundName: String
    let activites: [Activity]
    let foods: [Food]
    
    var body: some View {
        GeometryReader { metrics in
            ZStack {
                ZStack {}
                .frame( maxWidth: .infinity, maxHeight: .infinity)
                .background(Image(backgroundName).resizable().aspectRatio(contentMode: .fill))
                .ignoresSafeArea()
                VStack {
                    Text(title)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(backgroundName == "evening" ? .white : .black)
                    HStack {
                        Image(systemName: "flame")
                            .foregroundColor(Color(hex: "FFB636"))
                        Text(String(format: "%d kcal", Player.shared.currentEnergyDelta))
                            .fontWeight(.semibold)
                    }
                        .padding(10)
                        .background(Color(hex: "7D0000"))
                        .cornerRadius(8)
                        .foregroundColor(.white)
                    ZStack {
                        GeometryReader { metrics in
                            VStack(alignment: .center) {
                                Image("person")
                                    .resizable().aspectRatio(contentMode: .fit)
                                    .frame(width: metrics.size.width, height: 250, alignment: .center)
                                    .padding(EdgeInsets(top: 20, leading: 0, bottom: 0, trailing: 0))
                            }
                        }
                        if activites.count > 0 {
                            ActivitySelectorView(activities: activites)
                        } else {
                            FoodSelectorView(foods: foods)
                        }
                    }
                    if targetViewIndex >= 0 {
                        NavigationLink(destination: storyLane.pages[targetViewIndex]) {
                            Text("Continue")
                                .frame(maxWidth: 300, alignment: .center)
                                .padding()
                                .foregroundColor(.white)
                                .background(Color.ui.navButton)
                                .cornerRadius(8)
                        }
                    } else {
                        NavigationLink(destination: EndResultView()) {
                            Text("View Result")
                                .frame(maxWidth: 300, alignment: .center)
                                .padding()
                                .foregroundColor(.white)
                                .background(Color.ui.navButton)
                                .cornerRadius(8)
                        }
                    }
                }
                    .padding(20)
            }
            .navigationBarHidden(true)
        }
    }
}

struct DailyView_Previews: PreviewProvider {
    static var previews: some View {
        DailyView(
            targetViewIndex: 1,
            title: "Morning",
            backgroundName: "day",
            activites: ActivityList.morning,
            foods: []
        )
    }
}
