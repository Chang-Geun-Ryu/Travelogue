//
//  PlayAudioView.swift
//  Test
//
//  Created by ChangGeun Ryu on 2021/01/18.
//

import SwiftUI

struct PlayAudioView: View {
    var body: some View {
        GeometryReader { proxy in
            ZStack(alignment: .top){
                RoundedRectangle(cornerRadius: 24)
                    .foregroundColor(Color("MainBackground"))
                    .frame(maxWidth: .infinity, minHeight: 200, idealHeight: 200, maxHeight: 200, alignment: .center)
                HStack {
                    HStack {
                        Image(systemName: "xmark")
                        Image(systemName: "line.horizontal.3")
                    }
                    Spacer()
                    Text("text")
                    Spacer()
                    HStack() {
                        Text("1:20")
                            .font(Font.custom("NanumSquareOTFR", size: 6))
                        Spacer()
                        Image(systemName: "backward.end.fill")
                        Spacer()
                        Image(systemName: "pause.fill")
                        Spacer()
                        Image(systemName: "forward.end.fill")
                        Spacer()
                        Text("2:30")
                            .font(Font.custom("NanumSquareOTFR", size: 6))
                    }
                    .frame(width: proxy.size.width/2)
                }
                .padding()
            }
        }
    }
}

struct PlayAudioView_Previews: PreviewProvider {
    static var previews: some View {
        PlayAudioView()
    }
}
