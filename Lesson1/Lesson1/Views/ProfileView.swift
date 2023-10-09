
import SwiftUI

struct ProfileView: View {
    
    @EnvironmentObject var musicBandsViewModel: MusicBandsViewModel
    @Binding var selectedTabIndex: Int
    
    var body: some View {
        Button(action: {
            selectedTabIndex = 1
            musicBandsViewModel.selectedBand = musicBandsViewModel.bands.first
        }) {
            Text("Show favorite bands")
        }
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(selectedTabIndex: .constant(0))
    }
}
