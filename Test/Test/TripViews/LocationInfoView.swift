//
//  LocationInfoView.swift
//  Test
//
//  Created by ChangGeun Ryu on 2021/02/05.
//

import SwiftUI

struct LocationInfoView: View {
    let detail: DetailTrip
    var body: some View {
        ZStack(alignment: .top) {
            Image(detail.mainImage)
            
            HStack(alignment: .bottom) {
                GeometryReader { proxy in
                    ZStack{
                        DetailInfoView(detail: detail)
                            .frame(height: proxy.size.height - proxy.size.height/3, alignment: .bottom)
                            .position(x: proxy.size.width/2, y: proxy.size.height - proxy.size.height/3)
                    }
                }
            }
        }
    }
}

struct DetailInfoView: View {
    let detail: DetailTrip
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                HStack {
                    Text(detail.name)
                        .modifier(NanumTextModifier(fontSize: 26))
                    Spacer()
                    Group {
                        if let _ = detail.videoUrl {
                            Button(action: {
                                
                            }, label: {
                                Image(systemName: "play.fill")
                                    .resizable()
                                    .frame(width: 26, height: 26, alignment: .center)
                                    .foregroundColor(Color("MainBackground"))
                            })
                            .padding(.horizontal)
                        }
                        if let _ = detail.audioUrl {
                            Button(action: {
                                
                            }, label: {
                                Image(systemName: "headphones")
                                    .resizable()
                                    .frame(width: 26, height: 26, alignment: .center)
                                    .foregroundColor(Color("MainBackground"))
                            })
                            .padding(.horizontal)
                        }
                    }
                }
                .padding(.horizontal)
                
                Divider()
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("주소")
                            .padding(.vertical, 5)
                        Text(detail.address)
                    }
                    Spacer()
                    
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "mappin.and.ellipse")
                            .resizable()
                            .frame(width: 26, height: 26, alignment: .center)
                            .foregroundColor(Color("MainBackground"))
                    })
                    .padding()
                }.padding(.horizontal)
                
                Divider()
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("전화번호")
                            .padding(.vertical, 5)
                        Text(detail.phone)
                    }
                    Spacer()
                    
                    Button(action: {
                        let telephone = "tel://"
                        let formattedString = telephone + detail.phone
                        guard let url = URL(string: formattedString) else { return }
                        UIApplication.shared.open(url)
                    }, label: {
                        Image(systemName: "phone.fill")
                            .resizable()
                            .frame(width: 26, height: 26, alignment: .center)
                            .foregroundColor(Color("MainBackground"))
                    })
                    .padding()
                }
                .padding(.horizontal)
                
                Divider()
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("한줄설명")
                            .padding(.vertical, 5)
                        Text(detail.simpleCover)
                    }
                }
                .padding(.horizontal)
                
                Divider()
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("상세설명")
                            .padding(.vertical, 5)
                            .multilineTextAlignment(.leading)
                        Text(detail.detailCover)
                    }
                }
                .padding(.horizontal)
                
                Spacer(minLength: 30)
            }
        }
        .padding(.top, 40)
        .background(Color.white)
        .cornerRadius(30)
        
    }
}

struct LocationInfoView_Previews: PreviewProvider {
    static var previews: some View {
        LocationInfoView(detail: DetailTripData().lists[0])
    }
}
