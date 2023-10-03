
import SwiftUI

struct MapView: View {
    
    @ObservedObject var mapViewModel: MapViewModel = .init()
    
    var body: some View {
        HStack {
            Button { mapViewModel.isModelWindowShown.toggle() }
            label: {
                VStack {
                    Image(systemName: "note")
                    Text("Show map")
                }
            }.sheet(isPresented: $mapViewModel.isModelWindowShown, onDismiss: {
                print("Dismiss")
            }) {
                ActivityIndicatorView(isAnimating: .constant(true), style: .large)
            }
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
