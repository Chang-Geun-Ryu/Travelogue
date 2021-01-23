//
//  SwiftUIView.swift
//  Test
//
//  Created by ChangGeun Ryu on 2021/01/16.
//

import SwiftUI

struct DetailTripView: View {
    let locationName: String
    let date: String
    let imageString: String
    @Binding var isShowPlayAudio: Bool
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                Text(locationName)
                    .font(Font.custom("NanumSquareOTFR", size: 24))
                Text(date)
                    .font(Font.custom("NanumSquareOTFR", size: 14))
                    .alignmentGuide(.leading, computeValue: { dimension in
                        dimension[.leading]
                    })
            }
            .padding(.leading,15)
            
            HStack(spacing: 0) {
                Image("left")
                    .padding(.leading, 15)
                Image(imageString)
                    .resizable()
                    .scaledToFit()
                    .padding(-20)
            }
        }
        .onTapGesture {
            isShowPlayAudio.toggle()
        }
    }
}


struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        DetailTripView(locationName: "영월역", date: "7/9 - AM 09:00", imageString: "영월역", isShowPlayAudio: .constant(false))
    }
}
