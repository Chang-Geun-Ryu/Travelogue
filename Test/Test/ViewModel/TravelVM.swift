import Foundation

final class TravelVM: ObservableObject {
    @Published var isLogin: Bool = false
    @Published var isError: Bool = false
    
    @Published var trip = TripData()
    @Published var listOrder = TimeOrder.new
    @Published var selectedDetailName: String?
    
    @Published var isShowPlayAudio: Bool = false
    @Published var isShowDetailView: Bool = false
    
    var selectedName: String?
    
    func getDetailTrip() -> [DetailTrip] {
        guard let detail = trip.lists.filter({ $0.name == selectedName ?? ""}).first?.detailTrips else {
            return []
        }
        
        if listOrder == .new {
            return detail
        } else {
            return detail.sorted { $0.order > $1.order }
        }
    }
    
    func selectTrip(name: String? = nil) {
        self.selectedName = name
    }
    
    func getSelectedDetailTrip() -> DetailTrip? {
        guard let name = selectedDetailName else { return nil }
        
        return getDetailTrip().filter { $0.name == name }.first
    }
    
//    func callPhone(number: String) {
//        guard let number = URL(string: "tel://" + number) else { return }
//        UIApplication.shared.open(number)
//    }
}
