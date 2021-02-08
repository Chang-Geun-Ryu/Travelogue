//
//  TripMainView.swift
//  Test
//
//  Created by ChangGeun Ryu on 2021/01/15.
//

import SwiftUI

struct TripMainView: View {
    @EnvironmentObject var vm: TravelVM
    @State var seleted: Int = 0
    @State var touchedOrderBtn = false
    
    var body: some View {
        VStack(spacing: 0) {
            TopView(touchedOrderBtn: $touchedOrderBtn, title: "나의 여행지")
                .padding(.bottom)
            if (vm.isShowDetailView == false) {
                ScrollView {
                    LazyVStack(spacing: 0) {
                        switch seleted {
                        case 0:
                            ForEach(vm.trip.lists, id: \.self) { trip in
                                TripLocationView(tripInfo: trip)
                                    .onTapGesture {
                                        vm.selectTrip(name: trip.name)
                                        seleted = 1
                                    }
                            }
                        case 1:
                            ForEach(vm.getDetailTrip(), id: \.self) { list in
                                DetailTripView(detailTrip: list)
                                    .onTapGesture {
                                        vm.selectedDetailName = list.name
                                        vm.isShowPlayAudio.toggle()
                                    }
                            }
                            
                        case 2:
                            Text("Map")
                        case 3:
                            Text("Msg")
                        case 4:
                            Text("setting")
                        default:
                            fatalError("switch value is default in TripMainView")
                        }
                    }
                }
            } else {
                if let detail = vm.getSelectedDetailTrip() {
                    LocationInfoView(detail: detail)
                }
            }
            
            ZStack(alignment: .bottom) {
                if let title = vm.selectedDetailName, vm.isShowPlayAudio && seleted == 1 {
                    PlayAudioView(title: title)
                        .frame(height: 120)
                }
                
                TabBarView(selected: $seleted)
                    .frame(height: 60)
            }
        }
        .overlay(
            VStack(alignment: .leading, spacing: 0) {
                if touchedOrderBtn {
                    Button {
                        vm.listOrder = .new
                        vm.trip.orderList(true)
                        self.touchedOrderBtn.toggle()
                    } label: {
                        Text("최신순")
                            .font(Font.custom("NanumSquareOTFR", size: 17))
                            .foregroundColor(Color("NewPastTextColor"))
                            .padding()
                            .padding(.horizontal, 50)
                    }
                    .background(Color.white)
                    Button {
                        vm.listOrder = .past
                        vm.trip.orderList(false)
                        self.touchedOrderBtn.toggle()
                    } label: {
                        Text("과거순")
                            .font(Font.custom("NanumSquareOTFR", size: 17))
                            .foregroundColor(Color("NewPastTextColor"))
                            .padding()
                            .padding(.horizontal, 50)
                    }
                    .background(Color.white)
                }
            }
            .border(Color("NewPastTextColor"), width: 1)
            .padding(.top, 20)
            .padding()
            , alignment: .topTrailing)
    }
}

struct TripMainView_Previews: PreviewProvider {
    static var previews: some View {
        TripMainView().environmentObject(TravelVM())
    }
}

enum TimeOrder {
    case new
    case past
}
