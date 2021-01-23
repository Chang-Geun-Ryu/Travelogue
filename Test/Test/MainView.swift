//
//  MainView.swift
//  Test
//
//  Created by ChangGeun Ryu on 2021/01/16.
//

import SwiftUI

struct MainView: View {
    @State var isLogin: Bool = true
    var body: some View {
        if isLogin {
            TripMainView(isLogin: $isLogin)
        } else {
            SignView(isLogin: $isLogin)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        
        MainView(isLogin: false)
        MainView(isLogin: true)
    }
}
