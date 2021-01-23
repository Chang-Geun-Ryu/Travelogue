//
//  FindPWView.swift
//  Test
//
//  Created by mcnc on 2021/01/12.
//

import SwiftUI

struct FindPWView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var userID: String = ""
    @State var password: String = ""
    var body: some View {
        ZStack {
            Color.init("backgroundColor").edgesIgnoringSafeArea(.all)
            VStack {
                CustomNavigationBar(presentationMode: presentationMode, title: "")
                
                VStack{
                    HStack {
                        Spacer()
                        NavigationLink(destination: FindPWView()) {
                            Text("비밀번호 찾기")
                                .foregroundColor(.white)
                        }.navigationBarHidden(true)
                        .navigationBarBackButtonHidden(true)
                    }
                    
                }
                
                ConfirmButton()
            }
            
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct FindPWView_Previews: PreviewProvider {
    static var previews: some View {
        FindPWView()
    }
}

struct ConfirmButton: View {
    var body: some View {
        GeometryReader { metrics in
            Button(action: {print(metrics)}, label: {
                Text("button")
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
            })
            .padding()
            .background(Color.white)
            .padding()
        }
        .padding(.top)
    }
}
