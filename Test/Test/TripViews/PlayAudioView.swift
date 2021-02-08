//
//  PlayAudioView.swift
//  Test
//
//  Created by ChangGeun Ryu on 2021/01/18.
//

import SwiftUI

struct PlayAudioView: View {
    @EnvironmentObject var vm: TravelVM
    var title: String
    var body: some View {
        GeometryReader { proxy in
            ZStack(alignment: .top){
                RoundedRectangle(cornerRadius: 24)
                    .foregroundColor(Color("MainBackground"))
                    .frame(maxWidth: .infinity, minHeight: 200, idealHeight: 200, maxHeight: 200, alignment: .center)
                HStack {
                    HStack {
                        Button(action: {
                            vm.isShowPlayAudio.toggle()
                        }, label: {
                            Image(systemName: "xmark")
                                .foregroundColor(.black)
                        })
                        Button(action: {
                            vm.isShowDetailView.toggle()
                        }, label: {
                            Image(systemName: "line.horizontal.3")
                                .foregroundColor(.black)
                        })
                    }
                    Spacer()
                    Text(title)
                    Spacer()
                    HStack() {
                        Text("1:20")
                            .font(Font.custom("NanumSquareOTFR", size: 6))
                        Spacer()
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Image(systemName: "backward.end.fill")
                                .foregroundColor(.black)
                        })
                        
                        Spacer()
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Image(systemName: "pause.fill")
                                .foregroundColor(.black)
                        })
                        Spacer()
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Image(systemName: "forward.end.fill")
                                .foregroundColor(.black)
                        })
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
        PlayAudioView(title: "title")
    }
}
