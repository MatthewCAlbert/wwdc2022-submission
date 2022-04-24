//
//  SetupScreenView.swift
//  DietLife
//
//  Created by Matthew Christopher Albert on 23/04/22.
//

import SwiftUI

struct SetupScreenView: View {
    @State var currentBodyType: BodyType?
    
    var body: some View {
        VStack {
            VStack{
                Spacer()
                Text("Pick His Body Type")
                    .font(.largeTitle)
                    .fontWeight(Font.Weight.bold)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
                    .foregroundColor(Color.white)
                Text(currentBodyType?.rawValue ?? "")
                    .font(.title)
                    .fontWeight(Font.Weight.medium)
                    .foregroundColor(Color.white)
                HStack(alignment: .center, spacing: 10) {
                    Group {
                        Button(action: {
                            currentBodyType = .skinny
                            Player.reInit(currentBodyType!)
                        }) {
                            Image("skinny")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 200)
                        }
                        .padding(20)
                        .background(currentBodyType == BodyType.skinny ? Color.ui.light : Color.ui.selectionButton)
                        .cornerRadius(20)
                        Button(action: {
                            currentBodyType = .normal
                            Player.reInit(currentBodyType!)
                        }) {
                            Image("normal")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 200)
                        }
                        .padding(20)
                        .background(currentBodyType == BodyType.normal ? Color.ui.light : Color.ui.selectionButton)
                        .cornerRadius(20)
                        Button(action: {
                            currentBodyType = .fat
                            Player.reInit(currentBodyType!)
                        }) {
                            Image("fat")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 200)
                        }
                        .padding(20)
                        .background(currentBodyType == BodyType.fat ? Color.ui.light : Color.ui.selectionButton)
                        .cornerRadius(20)
                    }.frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                }
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
                NavigationLink(destination: storyLane.pages[0]) {
                    Text("Start the Day")
                        .multilineTextAlignment(.leading)
                        .frame(maxWidth: 300, alignment: .center)
                        .padding()
                        .foregroundColor(Color.white)
                        .background(Color.ui.navButton)
                        .cornerRadius(8)
                }.disabled( currentBodyType == nil )
                Spacer()
            }
            .padding(EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 30))
        }
        .background(Color.ui.menuBg)
        .navigationBarHidden(true)
    }
}

struct SetupScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SetupScreenView()
    }
}
