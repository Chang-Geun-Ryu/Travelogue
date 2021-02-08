//
//  MainView.swift
//  Test
//
//  Created by ChangGeun Ryu on 2021/01/16.
//

import SwiftUI

struct MainView: View {
//    @State var isLogin: Bool = true
//    @ObservedObject var travelVM = TravelVM()
    @EnvironmentObject var travelVM: TravelVM
    
    var body: some View {
        if travelVM.isLogin {
            TripMainView()
//            TripMainView(isLogin: travelVM.isLogin)
        } else {
            SignView()
//            SignView(isLogin: $isLogin)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView().environmentObject(TravelVM())
//        MainView(isLogin: false)
//        MainView(isLogin: true)
    }
}
