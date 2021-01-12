//
//  FindPWView.swift
//  Test
//
//  Created by mcnc on 2021/01/12.
//

import SwiftUI

struct FindPWView: View {
    var body: some View {
        ZStack {
            Color.init("backgroundColor").edgesIgnoringSafeArea(.all)
            Text("Hello, World!")
        }.navigationBarTitle("SwiftUI", displayMode: .inline)
    }
}

struct FindPWView_Previews: PreviewProvider {
    static var previews: some View {
        FindPWView()
    }
}
