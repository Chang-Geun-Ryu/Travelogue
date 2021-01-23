//
//  TabBarView.swift
//  Test
//
//  Created by ChangGeun Ryu on 2021/01/15.
//

import SwiftUI

struct TabBarView: View {
    let imageNames = ["house", "doc.text", "mappin.circle", "message", "gearshape.fill"]
    let buttonNames = ["Home", "Todo", "Map", "Message", "Setting"]
    @Binding var selected: Int
    var body: some View {
        
        GeometryReader { proxy in
            ZStack(alignment: .top){
                RoundedRectangle(cornerRadius: 24)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, minHeight: 100, idealHeight: 100, maxHeight: 100, alignment: .center)
                HStack {
                    ForEach(getNames(), id: \.self) { names in
                        let selectedButton = imageNames[selected] == names[0]
                        Spacer()
                        Button(action: {
                            for i in 0..<imageNames.count {
                                if names[0] == imageNames[i] {
                                    selected = i
                                }
                            }
                        }, label: {
                            ZStack {
                                if selectedButton {
                                    Circle()
                                        .strokeBorder(Color.white, lineWidth: 4)
                                        .background(Circle().foregroundColor(Color("MainBackground")))
                                        .frame(width: 74)
                                        .padding(.bottom, 10)
                                }
                                VStack {
                                    if !selectedButton {
                                        Image(systemName: names[0])
                                            .foregroundColor(Color("MainBackground"))
                                        Text(names[1])
                                            .foregroundColor(Color("MainBackground"))
                                            .font(Font.custom("NanumSquareOTFR", size: 10))
                                    } else {
                                        Image(systemName: names[0])
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 30)
                                            .foregroundColor(Color.white)
                                            .padding(.bottom, 10)
                                    }
                                }
                            }
                        })
                        .frame(width: proxy.size.width / CGFloat(imageNames.count + 2), height: 75)
                        .padding(.top, -15)
                        Spacer()
                    }
                }
//                .alignmentGuide(.top, computeValue: { dimension in
//                    dimension[.top]
//                })
            }
        }
    }
    
    func getNames() -> [[String]] {
        var names: [[String]] = []
        for n in 0..<imageNames.count {
            names.append([imageNames[n], buttonNames[n]])
        }
        return names
    }
    
    func selectIndex() {
        
    }
}

struct ImageButtonView: View {
    @Binding var selected: String
    let names: [String]
    
    var body: some View {
        let selectedButton = selected == names[0]
        ZStack{
            Button(action: {
                self.selected = names[0]
            }, label: {
                ZStack {
                    if selectedButton {
                        Circle()
                            .strokeBorder(Color.white, lineWidth: 4)
                            .background(Circle().foregroundColor(Color.red))
                            .frame(width: 74)
                    }
                    VStack {
                        if !selectedButton {
                            Image(systemName: names[0])
                                .foregroundColor(Color("MainBackground"))
                            Text(names[1])
                                .foregroundColor(Color("MainBackground"))
                                .font(Font.custom("NanumSquareOTFR", size: 10))
                        } else {
                            Image(systemName: names[0])
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30)
                                .foregroundColor(Color("MainBackground"))
                                .padding(.bottom, 10)
                        }
                    }
                }
            })
        }
        
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView(selected: .constant(0))
    }
}


//
//struct TabBarView: View {
//    let imageNames = ["house", "doc.text", "mappin.circle", "message", "gearshape.fill"]
//    let buttonNames = ["Home", "Todo", "Map", "Message", "Setting"]
//    @Binding var selected: Int
//    var body: some View {
//
//        GeometryReader { proxy in
//            ZStack(alignment: .top){
//                RoundedRectangle(cornerRadius: 18)
//                    .foregroundColor(.white)
//                    .background(Color.white)
//                    .frame(maxWidth: .infinity, minHeight: 100, idealHeight: 100, maxHeight: 100, alignment: .center)
//                HStack {
//                    ForEach(getNames(), id: \.self) { names in
//                        let selectedButton = imageNames[selected] == names[0]
//                        Spacer()
//                        Button(action: {
//                            for i in 0..<imageNames.count {
//                                if names[0] == imageNames[i] {
//                                    selected = i
//                                }
//                            }
//                        }, label: {
//                            ZStack {
//                                if selectedButton {
//                                    Circle()
//                                        .strokeBorder(Color.white, lineWidth: 4)
//                                        .background(Circle().foregroundColor(Color("MainBackground")))
//                                        .frame(width: 74)
//                                        .padding(.bottom, 10)
//                                }
//                                VStack {
//                                    if !selectedButton {
//                                        Image(systemName: names[0])
//                                            .foregroundColor(Color("MainBackground"))
//                                        Text(names[1])
//                                            .foregroundColor(Color("MainBackground"))
//                                            .font(Font.custom("NanumSquareOTFR", size: 10))
//                                    } else {
//                                        Image(systemName: names[0])
//                                            .resizable()
//                                            .scaledToFit()
//                                            .frame(width: 30)
//                                            .foregroundColor(Color.white)
//                                            .padding(.bottom, 10)
//                                    }
//                                }
//                            }
//                        })
//                        .frame(width: proxy.size.width / CGFloat(imageNames.count + 2), height: 75)
//                        .padding(.top, -15)
//                    }
//                }
//            }
//        }
//    }
//
//    func getNames() -> [[String]] {
//        var names: [[String]] = []
//        for n in 0..<imageNames.count {
//            names.append([imageNames[n], buttonNames[n]])
//        }
//        return names
//    }
//
//    func selectIndex() {
//
//    }
//}
