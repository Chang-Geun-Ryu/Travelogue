//
//  LoginView.swift
//  Test
//
//  Created by ChangGeun Ryu on 2021/01/12.
//

import SwiftUI

struct LoginView: View {
//    @ObservedObject var vm: TravelVM
    @EnvironmentObject var vm: TravelVM
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var userID = ""
    @State var password = ""
    @State var passwordConfir = ""
    let errorUserID = "올바른 아이디를 입력하세요"
    let errorPassword = "올바른 비밀번호를 입력하세요"
    let errorPasswordConfir = "비밀번호가 같도록 입력하세요"
    
    let viewType: SignViewType
    
    var body: some View {
        ZStack {
            Color.init("backgroundColor").edgesIgnoringSafeArea(.all)
            GeometryReader { proxy in
                VStack {
                    VStack {
                        CustomNavigationBar(presentationMode: presentationMode, title: self.viewType.rawValue)
                            .frame(height: proxy.size.height / 4)
                        UnderLineTextField(placehold: "UserID", userInfo: $userID, error: vm.isError)
                            .padding([.bottom, .horizontal])
                            .overlay(
                                TextView(text: vm.isError ? errorUserID : nil),
                                alignment: .bottomLeading)
                        if viewType == .SignIn || viewType == SignViewType.SignUp {
                            UnderLineTextField(placehold: "Password", userInfo: $password, error: vm.isError)
                                .padding([.bottom, .horizontal])
                                .overlay(
                                    TextView(text: vm.isError ? errorPassword : nil),
                                    alignment: .bottomLeading)
                                .overlay(
                                    NavigationLink(
                                        destination: LoginView(viewType: .FindPW),
                                        label: {
                                            if viewType == .SignIn {
                                                Text("비밀번호찾기")
                                                    .font(Font.custom("NanumSquareOTFR", size: 15))
                                                    .foregroundColor(.white)
                                            }
                                        })
                                        .padding(.trailing)
                                        .padding(.bottom, -10)
                                    , alignment: .bottomTrailing)
                        }
                        if viewType == .SignUp {
                            UnderLineTextField(placehold: "PasswordConfir", userInfo: $passwordConfir, error: vm.isError)
                                .padding([.bottom, .horizontal])
                                .overlay(
                                    TextView(text: vm.isError ? errorPasswordConfir : nil),
                                    alignment: .bottomLeading)
                        }
                    }
                    .frame(height: proxy.size.height/2.5, alignment: .top)
                    
                    Spacer()
                        .frame(height: proxy.size.height / 10)
                    
                    Button(action: {
                        self.touchButton()
                    }, label: {
                        Text("확인")
                            .font(Font.custom("NanumGothic", size: 20))
                            .foregroundColor(Color("MainBackground"))
                    })
                    .frame(width: proxy.size.width, height: 47, alignment: .center)
                    .padding(.horizontal, -10)
                    .background(Color.white)
                    .cornerRadius(14)
                }
            }
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
    
    private func getTypeElement(_ type: SignViewType) -> [[String?]] {
        var elements: [[String?]] = []
        
        for n in 0..<type.getNames().count {
            elements.append([type.getNames()[n], vm.isError ? type.getErrorStrings()[n] : nil])
        }
        
        print(elements)
        return elements
    }
    
    private func touchButton() {
        vm.isError = true
        switch self.viewType {
        case .SignIn:
            if self.userID == "1" && self.password == "1" {
                vm.isLogin = true
                vm.isError = false
            }
            return
        default:
            print("other type!")
        }
    }
}

struct TextView: View {
    let text: String?
    var body: some View {
        Text(text ?? "")
            .font(Font.custom("NanumSquareOTFR", size: 10))
            .foregroundColor(Color("ErrorTextColor"))
            .padding(.leading)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(viewType: .SignIn).environmentObject(TravelVM())
        LoginView(viewType: .SignUp).environmentObject(TravelVM())
        LoginView(viewType: .FindPW).environmentObject(TravelVM())
    }
}
