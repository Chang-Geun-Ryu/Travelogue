//
//  ContentView.swift
//  Test
//
//  Created by mcnc on 2021/01/12.
//

import SwiftUI

struct SignView: View {
    @EnvironmentObject var vm: TravelVM
    var body: some View {
        NavigationView {
            ZStack {
                Color("MainBackground")
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Spacer()
                        .frame(height: 70)
                    Text("여행기")
                        .foregroundColor(.white)
                        .font(.system(size: 85))
                    Text("열심히 일 한 당신 떠나요!")
                        .foregroundColor(.white)
                        .font(.system(size: 16))
                    Spacer()
                    
                    VStack(spacing: -15.0) {
                        NavigationLink(
                            destination: LoginView(viewType: .SignIn),
                            label: {
                                MainButton(label: "로그인")
                            })
                        NavigationLink(
                            destination: LoginView(viewType: .SignUp),
                            label: {
                                MainButton(label: "회원가입")
                            })
                    }
                    .navigationBarHidden(true)
                    
                    HStack {
                        Image(systemName: "info.circle.fill")
                            .resizable()
                            .frame(width: 20, height: 20, alignment: .center)
                            .foregroundColor(.white)
                            .padding(.bottom)
                        Text("본 서비스는 여행기의 내용을 회원끼리 공유하는 서비스 입니다. ")
                            .font(Font.custom("NanumSquareRegular", size: 16))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .padding(.top, 5.0)
                            .padding([.leading, .trailing], 30.0)
                    }
                    .padding(.horizontal)
                    Spacer()
                        .frame(height: 150)
                }
            }
            
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SignView().environmentObject(TravelVM())
    }
}

struct MainButton: View {
    let label: String
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 14)
                .foregroundColor(Color.white)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 47, idealHeight: 47, maxHeight: 47, alignment: .center)
                .padding()
            Text(label)
                .font(Font.custom("NanumGothic", size: 20))
                .foregroundColor(Color("MainBackground"))
        }
    }
}


struct UnderLineTextField: View {
    let placehold: String
    @Binding var userInfo: String
    var error: Bool
    
    var body: some View {
        VStack {
            TextField(placehold, text: $userInfo)
                .foregroundColor(error ? Color("ErrorTextColor") : Color("SmallTextColor"))
            Divider()
                .frame(height: 1)
                .background(error ? Color("ErrorTextColor") : Color("SmallTextColor"))
        }
    }
}


