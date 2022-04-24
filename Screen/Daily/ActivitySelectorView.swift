//
//  ActivitySelectorView.swift
//  DietLife
//
//  Created by Matthew Christopher Albert on 24/04/22.
//

import SwiftUI

struct ActivitySelectorView: View {
    let activities: [Activity]
    
    var body: some View {
        GeometryReader { metrics in
            ScrollView {
                VStack(alignment: .center) {
                    ForEach(activities, id: \.name) { activity in
                        ActivityButtonView(activity: activity)
                    }
                }
                .frame(width: metrics.size.width)
            }
        }
    }
}

struct ActivitySelectorView_Previews: PreviewProvider {
    static var previews: some View {
        ActivitySelectorView(activities: ActivityList.morning)
    }
}
