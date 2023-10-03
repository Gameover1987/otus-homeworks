import Foundation

final class MusicBandsViewModel : ObservableObject {
    
    private let bandsProvider: BandsProviderProtocol
    
    init(bandsProvider: BandsProviderProtocol) {
        self.bandsProvider = bandsProvider
        
        self.bands = bandsProvider.getBands()
    }
    
    let bands: [Band]
    
    
    @Published
    var title: String = "Rock bands"
    
    @Published
    var selectedBand: Band?
}
