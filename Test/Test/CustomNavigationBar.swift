//
//  CustomNaviView.swift
//  Test
//
//  Created by ChangGeun Ryu on 2021/01/15.
//

import SwiftUI


struct CustomNavigationBar: View {
    var presentationMode: Binding<PresentationMode>
    let title: String
    var body: some View {
        GeometryReader { metrics in
            ZStack {
                HStack {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "chevron.backward")
                            .font(Font.system(.title))
                            .foregroundColor(.white)
                    })
                    .padding(.leading, 14.0)
                    Spacer()
                }
                HStack(alignment: .center, spacing: 0, content: {
                    Text(title)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                        .font(Font.system(.largeTitle))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                })
            }
        }
    }
}

