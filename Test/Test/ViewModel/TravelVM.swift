import Foundation

final class TravelVM: ObservableObject {
    @Published var isLogin: Bool = false
    @Published var isError: Bool = false
    
    @Published var trip = TripData()
    @Published var listOrder = TimeOrder.new
    @Published var selectedDetailName: String?
    
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
}
