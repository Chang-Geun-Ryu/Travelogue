//
//  ContentView.swift
//  Test
//
//  Created by mcnc on 2021/01/12.
//

import SwiftUI

struct ContentView: View {
    @State var userID: String = ""
    @State var password: String = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.init("backgroundColor").edgesIgnoringSafeArea(.all)
                
                VStack {
                    UnderLineTextField(placehold: "UserID", userId: $userID)
                    
                    UnderLineTextField(placehold: "Password", userId: $password)

                    HStack {
                        Spacer()
                        NavigationLink(destination: FindPWView()) {
                            Text("비밀번호 찾기")
                                .foregroundColor(.white)
                        }
                    }
                    
                    Button /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/
                        label: {
                        Text("확인")
                            
                    }
                }
                .padding(34.0)
            }
        }
        .navigationBarHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct UnderLineTextField: View {
    let placehold: String
    @Binding var userId: String
    
    var body: some View {
        TextField(placehold, text: $userId)
        Divider()
            .frame(height: 1)
            .background(Color.white)
    }
}
