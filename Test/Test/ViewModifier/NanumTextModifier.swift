//
//  LocationTextModifier.swift
//  Test
//
//  Created by ChangGeun Ryu on 2021/01/27.
//

import SwiftUI


struct NanumTextModifier: ViewModifier {
    
    let fontSize: CGFloat
    
    init(fontSize: CGFloat) {
        self.fontSize = fontSize
    }
    
    func body(content: Content) -> some View {
        content
            .font(Font.custom("NanumSquareOTFR", size: fontSize))
    }
}


enum NanumFontSize: Int {
    case location = 24
}
