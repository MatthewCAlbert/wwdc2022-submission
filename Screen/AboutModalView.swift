//
//  AboutModalView.swift
//  DietLife
//
//  Created by Matthew Christopher Albert on 24/04/22.
//

import SwiftUI

struct AboutModalView: View {
    var body: some View {
        VStack {
            VStack {
                Text("WWDC 2022 Submission")
                    .font(.title3)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
                Divider()
                Text("Author")
                    .font(.title3)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
                Text("Matthew Christopher Albert")
                    .font(.title2)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
                Text("Credits")
                    .font(.title3)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
                List {
                    Group {
                        Text("freesoundslibrary.com (Tada Sound)")
                        Text("kabarfajar.com (Cooked Rice)")
                        Text("tabloidbintang.com (Lotek)")
                    }
                    Group {
                        Text("kompas.com (Uduk Rice, Steamed Brownies, Serabi)")
                        Text("beautynesia.id (Instant Noodle)")
                        Text("cookpad.com (Woku, Gudeg)")
                        Text("merdeka.com (Soto, Bika Ambon)")
                        Text("suara.com (Sate Maranggi)")
                        Text("orami.co.id (Batagor)")
                        Text("resepedia.com (Rendang, Pempek)")
                        Text("selerasa.com (Rawon, Fried Rice)")
                        Text("pergikuliner.com (Nasi Padang)")
                    }
                }
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
                Spacer()
                Text("matthewcalbert.me | 2022")
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
            }
            .padding(30)
        }
        .foregroundColor(Color.ui.black)
        .background(Color.ui.imageBg)
        .navigationBarHidden(true)
    }
}

struct AboutModalView_Previews: PreviewProvider {
    static var previews: some View {
        AboutModalView()
    }
}
