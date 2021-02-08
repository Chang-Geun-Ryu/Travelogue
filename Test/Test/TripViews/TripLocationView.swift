//
//  TripLocationView.swift
//  Test
//
//  Created by ChangGeun Ryu on 2021/01/15.
//

import SwiftUI

struct TripLocationView: View {
    let tripInfo: Trip
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                Text(tripInfo.name)
                    .modifier(NanumTextModifier(fontSize: 24))
                    //.font(Font.custom("NanumSquareOTFR", size: 24))
                Text(tripInfo.date)
                    .modifier(NanumTextModifier(fontSize: 14))
//                    .font(Font.custom("NanumSquareOTFR", size: 14))
                    .alignmentGuide(.leading, computeValue: { dimension in
                        dimension[.leading]
                    })
            }
            .padding(.leading, 25)
            
            Image(tripInfo.imageName)
                .padding(.vertical, -15)
        }
        .frame(alignment: .leading)
        .background(Color.clear)
    }
}

struct TripLocationView_Previews: PreviewProvider {
    static var previews: some View {
        TripLocationView(tripInfo: TripData().lists[0])
    }
}
