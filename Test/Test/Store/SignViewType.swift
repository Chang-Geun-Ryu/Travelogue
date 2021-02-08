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
    var detailTrips: [DetailTrip]
}

struct TripData {
    static let names = ["홍천", "남이섬", "영월"]
    static let dates = ["7/9 - AM 10:00", "7/9 - AM 10:00", "7/9 - AM 10:00"]
    static let images = ["H", "N", "Y"]
    
    var lists = [
        Trip(name: names[0], date: dates[0], imageName: images[0], order: 0, detailTrips: DetailTripData().lists),
        Trip(name: names[1], date: dates[1], imageName: images[1], order: 1, detailTrips: DetailTripData().lists),
        Trip(name: names[2], date: dates[2], imageName: images[2], order: 2, detailTrips: DetailTripData().lists)
    ]
    
    mutating func orderList(_ order: Bool) {
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
    let videoUrl: URL?
    let audioUrl: URL?
    let address: String
    let phone: String
    let simpleCover: String
    let detailCover: String
    let mainImage: String
}

class DetailTripData {
    static let names = ["영월역", "고씨동굴", "김삿갓 유적지", "법흥사", "젊은달테마파크"]
    static let dates = ["7/9 - AM 9:00", "7/9 - AM 11:00", "7/9 - PM 14:00", "7/9 - PM 16:00", "7/9 - PM 18:00"]
    static let images = ["영월역", "고씨동굴", "김삿갓유적지", "법흥사", "젊은달테마파크"]
    static let address = "영월군 김삿갓면 김삿갓로 216-22"
    static let phone = "010-0000-1111"
    static let simple = "강원도 영월군 난고 김병연(金炳淵)의 유적지"
    static let detail =
    """
    강원도 영월군 하동면 와석리 노루목에 조성된 난고 김병연(金炳淵)의 유적지. 별호인 김삿갓으로 불리는 난고 김병연(1807~1863)을 기념하는 유적지와 부대시설이 조성되어 있다. 김삿갓 연구자료를 전시하고 있는 난고문학관과 많은 돌탑이 조성되어 있는 묘, 작은 성황당, 마대산을 따라 김삿갓이 살던 집터 등이 있다.

    방랑시인이었던 김병연은 1863년 전남 화순군 동북면 구암리 정시룡 댁에서 생을 마감했는데 3년 뒤 아들 익균이 화순의 초분지를 찾아 지금의 강원도 영월군 하동면(현 김삿갓면) 와석리 노루목 기슭으로 이장했다. 김병연의 묘소는 116년이 지나 1982년 확인되었으며, 묘소 주변으로 시비공원을 지었다.

    유적지 중 집터의 주거지 건물 또한 1982년에 발견되었는데, 2002년에 새로 복원해 지었다. 매년 10월 중순 김삿갓 묘역이 있는 김삿갓면 노루목 마을에서는 추모제, 추모살풀이춤, 백일장 등의 문화행사와 관광객들이 참여하는 체험행사가 열린다. 와석리의 기타 관광지로는 조선민화박물관, 묵산미술관, 김삿갓 묘역이 알려지기 전에는 와석계곡이라고 불렸던 김삿갓 계곡이 있다.

    [네이버 지식백과] 김삿갓 유적지 (두산백과)
    """
    static let mainImage = "TempImage"
    
    var lists = [
        DetailTrip(name: names[0], date: dates[0], imageName: images[0], order: 0, videoUrl: URL(string: "nil"), audioUrl: URL(string: "nil"), address: address, phone: phone, simpleCover: simple, detailCover: detail, mainImage: mainImage),
        DetailTrip(name: names[1], date: dates[1], imageName: images[1], order: 1, videoUrl: nil, audioUrl: nil, address: address, phone: phone, simpleCover: simple, detailCover: detail, mainImage: mainImage),
        DetailTrip(name: names[2], date: dates[2], imageName: images[2], order: 2, videoUrl: nil, audioUrl: nil, address: address, phone: phone, simpleCover: simple, detailCover: detail, mainImage: mainImage),
        DetailTrip(name: names[3], date: dates[3], imageName: images[3], order: 3, videoUrl: nil, audioUrl: nil, address: address, phone: phone, simpleCover: simple, detailCover: detail, mainImage: mainImage),
        DetailTrip(name: names[4], date: dates[4], imageName: images[4], order: 4, videoUrl: nil, audioUrl: nil, address: address, phone: phone, simpleCover: simple, detailCover: detail, mainImage: mainImage),
    ]
    
    func orderList(_ order: Bool) {
        self.lists.sort {
            order ? $0.order < $1.order : $0.order > $1.order
        }
    }
}
