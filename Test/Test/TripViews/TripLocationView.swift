//
//  TripLocationView.swift
//  Test
//
//  Created by ChangGeun Ryu on 2021/01/15.
//

import SwiftUI

struct TripLocationView: View {
    let tripInfo: Trip
//    let locationName: String
//    let date: String
//    let imageString: String
//    @Binding var seleted: Int
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                Text(tripInfo.name)
                    .font(Font.custom("NanumSquareOTFR", size: 24))
                Text(tripInfo.date)
                    .font(Font.custom("NanumSquareOTFR", size: 14))
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
//        .onTapGesture {
//            isShowPlayAudio.toggle()
//            seleted = 1
//            vm.selectTrip
//        }
    }
}

struct TripLocationView_Previews: PreviewProvider {
    static var previews: some View {
        TripLocationView(tripInfo: TripData().lists[0])
//        TripLocationView(tripInfo: Trip(), seleted: .constant(0))
    }
}
//
//HStack {
//    Text(locationName)
//        .font(Font.custom("NanumSquareOTFR", size: 24))
//    Text(date)
//        .font(Font.custom("NanumSquareOTFR", size: 14))
//        .alignmentGuide(.leading, computeValue: { dimension in
//            dimension[.leading]
//        })
//}
//.padding(.leading, 23)
//Image(imageString)
//    .resizable()
//    .scaledToFit()
//    .frame(width: proxy.size.width, height: proxy.size.width / 1.8)
