//
//  TopView.swift
//  Test
//
//  Created by ChangGeun Ryu on 2021/01/16.
//

import SwiftUI

struct TopView: View {
//    @Binding var isLogin: Bool
//    var isLogin: Bool
    var vm: TravelVM
//    @Binding var orderType: TimeOrder
    @Binding var touchedOrderBtn: Bool
    let title: String
    var body: some View {
        HStack {
            Button(action: {
                vm.isLogin = false
//                self.isLogin = false
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
//        TopView(isLogin: .constant(false), orderType: .constant(.new), touchedOrderBtn: .constant(false), title: "title")
        TopView(vm: TravelVM(), touchedOrderBtn: .constant(false), title: "title")
    }
}
