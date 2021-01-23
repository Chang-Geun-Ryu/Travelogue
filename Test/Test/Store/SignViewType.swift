//
//  SignViewType.swift
//  Test
//
//  Created by ChangGeun Ryu on 2021/01/14.
//

import Foundation

enum SignViewType: String {
    case SignIn = "로그인"
    case SignUp = "회원가입"
    case FindPW = "비밀번호 찾기"
    
    func getNames() -> [String] {
        switch self {
        case .SignIn:
            return ["UserID", "Password"]
        case .SignUp:
            return ["UserID", "Password", "PasswordConfir"]
        case .FindPW:
            return ["Password"]
        }
    }
    
    func getErrorStrings() -> [String] {
        ["올바른 아이디를 입력하세요", "올바른 비밀번호를 입력하세요", "비밀번호가 같도록 입력하세요"]
    }
}

struct Trip: Hashable, Identifiable {
    var id: some Hashable { name }
    let name: String
    let date: String
    let imageName: String
    let order: Int
}

class TripData {
    static let names = ["홍천", "남이섬", "영월"]
    static let dates = ["7/9 - AM 10:00", "7/9 - AM 10:00", "7/9 - AM 10:00"]
    static let images = ["H", "N", "Y"]
    
    var lists = [
        Trip(name: names[0], date: dates[0], imageName: images[0], order: 0),
        Trip(name: names[1], date: dates[1], imageName: images[1], order: 1),
        Trip(name: names[2], date: dates[2], imageName: images[2], order: 2)
    ]
    
    func orderList(_ order: Bool) {
        self.lists.sort {
            order ? $0.order < $1.order : $0.order > $1.order
        }
    }
}

struct DetailTrip: Hashable, Identifiable {
    var id: some Hashable { name }
    let name: String
    let date: String
    let imageName: String
    let order: Int
}

class DetailTripData {
    
    static let names = ["영월역", "고씨동굴", "김삿갓 유적지", "법흥사", "젊은달테마파크"]
    static let dates = ["7/9 - AM 9:00", "7/9 - AM 11:00", "7/9 - PM 14:00", "7/9 - PM 16:00", "7/9 - PM 18:00"]
    static let images = ["영월역", "고씨동굴", "김삿갓유적지", "법흥사", "젊은달테마파크"]
    
    var lists = [
        DetailTrip(name: names[0], date: dates[0], imageName: images[0], order: 0),
        DetailTrip(name: names[1], date: dates[1], imageName: images[1], order: 1),
        DetailTrip(name: names[2], date: dates[2], imageName: images[2], order: 2),
        DetailTrip(name: names[3], date: dates[3], imageName: images[3], order: 3),
        DetailTrip(name: names[4], date: dates[4], imageName: images[4], order: 4),
    ]
    
    func orderList(_ order: Bool) {
        self.lists.sort {
            order ? $0.order < $1.order : $0.order > $1.order
        }
    }
}
