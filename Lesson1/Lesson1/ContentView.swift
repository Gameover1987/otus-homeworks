
import SwiftUI

struct ContentView: View {
    
   @State private var selectedTabIndex: Int = 1
    
    var body: some View {
        TabView(selection: $selectedTabIndex) {
            ProfileView(selectedTabIndex: $selectedTabIndex)
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
                .tag(0)
            MusicBandsView()
                .tabItem {
                    Label("Music", systemImage: "music.note.list")
                }
                .tag(1)
            
            MapView()
                .tabItem {
                    Label("Map", systemImage: "map")
                }
                .tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
