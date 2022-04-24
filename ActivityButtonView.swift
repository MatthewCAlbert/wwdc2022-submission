//
//  ActivityButtonView.swift
//  DietLife
//
//  Created by Matthew Christopher Albert on 24/04/22.
//

import SwiftUI

struct ActivityButtonView: View {
    let activity: Activity
    @State var selected = false
    
    var body: some View {
        Button(action: {
            if !selected {
                Player.shared.doing(activity)
            } else {
                Player.shared.cancelDoing(activity)
            }
            selected.toggle()
        }) {
            HStack {
                Text(activity.name)
                    .padding()
                Image(systemName: "checkmark")
                    .opacity(selected ? 1.0 : 0.0)
            }
        }
        .frame(width: 300, alignment: .center)
        .foregroundColor(.white)
        .background(selected ? .green : Color(hex: "7D0000"))
        .cornerRadius(8)
    }
}

struct ActivityButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityButtonView(activity: ActivityList.morning[0])
    }
}
