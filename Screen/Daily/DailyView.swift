//
//  DailyView.swift
//  
//
//  Created by Matthew Christopher Albert on 23/04/22.
//

import SwiftUI

struct DailyView: View {
    let targetView: some View = ContentView()
    
    var body: some View {
        GeometryReader { metrics in
            ZStack {
                ZStack {}
                .frame( maxWidth: .infinity, maxHeight: .infinity)
                .background(Image("day").resizable().aspectRatio(contentMode: .fill))
                .ignoresSafeArea()
                VStack {
                    Text("Morning")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    HStack {
                        Image(systemName: "flame")
                            .foregroundColor(Color(hex: "FFB636"))
                        Text("+ 360 kcal")
                            .fontWeight(.semibold)
                    }
                        .padding(10)
                        .background(Color(hex: "7D0000"))
                        .cornerRadius(8)
                        .foregroundColor(.white)
                    Image("person")
                        .resizable().aspectRatio(contentMode: .fit)
                        .frame(width: 200, height: 250, alignment: .center)
                        .padding(20)
                    NavigationLink(destination: targetView) {
                        Text("Continue")
                            .frame(maxWidth: 300, alignment: .center)
                            .padding()
                            .foregroundColor(.white)
                            .background(Color(hex: "7D0000"))
                            .cornerRadius(8)
                    }
                }
                    .padding(20)
            }
        }
    }
}

struct DailyView_Previews: PreviewProvider {
    static var previews: some View {
        DailyView()
    }
}
