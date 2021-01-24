//
//  MainView.swift
//  Test
//
//  Created by ChangGeun Ryu on 2021/01/16.
//

import SwiftUI

struct MainView: View {
//    @State var isLogin: Bool = true
    @ObservedObject var travelVM = TravelVM()
//    @Environment var travelVM = TravelVM()
    var body: some View {
        if travelVM.isLogin {
            TripMainView(vm: travelVM)
//            TripMainView(isLogin: travelVM.isLogin)
        } else {
            SignView(vm: travelVM)
//            SignView(isLogin: $isLogin)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
//        MainView(isLogin: false)
//        MainView(isLogin: true)
    }
}
