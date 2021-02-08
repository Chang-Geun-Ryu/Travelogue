//
//  TopView.swift
//  Test
//
//  Created by ChangGeun Ryu on 2021/01/16.
//

import SwiftUI

struct TopView: View {
    @EnvironmentObject var vm: TravelVM
    @Binding var touchedOrderBtn: Bool
    let title: String
    var body: some View {
        HStack {
            Button(action: {
                if vm.isShowDetailView {
                    vm.isShowDetailView.toggle()
                } else if vm.isShowPlayAudio {
                    vm.isShowPlayAudio.toggle()
                } else {
                    vm.isLogin = false
                }
            }, label: {
                Image(systemName: "arrow.left")
                    .resizable()
                    .frame(width: 24, height: 24)
                    .scaledToFit()
                    .foregroundColor(Color("BackwordImageColor"))
            })
            Spacer()
            Text(title)
                    .font(Font.custom("NanumSquareOTFR", size: 26))
            Spacer()
            Button(action: {
                self.touchedOrderBtn.toggle()
            }, label: {
                Image(systemName: "line.horizontal.3.decrease")
                    .resizable()
                    .frame(width: 24, height: 24)
                    .scaledToFit()
                    .foregroundColor(Color("BackwordImageColor"))
            })
        }
        .padding(.horizontal)
    }
}

struct TopView_Previews: PreviewProvider {
    static var previews: some View {
        TopView(touchedOrderBtn: .constant(false), title: "title").environmentObject(TravelVM())
    }
}
