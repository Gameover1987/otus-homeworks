
import SwiftUI

struct MusicBandsView: View {
    
    @EnvironmentObject var musicBandsViewModel: MusicBandsViewModel
    
    var body: some View {
        NavigationView() {
            List {
                ForEach(musicBandsViewModel.bands, id: \.id) { band in
                    NavigationLink(
                        destination: MusicBandView(band),
                        tag: band,
                        selection: $musicBandsViewModel.selectedBand,
                        label: {
                            MusicBandCell(band)
                        })
                }
                .listStyle(.inset)
                .navigationTitle(musicBandsViewModel.title)
            }
        }
          
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        MusicBandsView()
    }
}
