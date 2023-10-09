
import SwiftUI

struct MusicBandCell: View {
    private let band: Band
    
    init (_ band: Band) {
        self.band = band
    }
    
    var body: some View {
        HStack {
            Image(band.name)
                .resizable()
                .cornerRadius(5.0)
                .frame(width: 50.0, height: 50.0)
            
            VStack (alignment: .leading) {
                Text(band.name)
                    .frame(height: 20.0)
                    .truncationMode(Text.TruncationMode.tail)
                Text(band.description)
                    .foregroundColor(.gray)
                    .frame(height: 20.0)
                    .truncationMode(Text.TruncationMode.tail)
            }
        }
    }
}

#Preview {
    MusicBandCell(Band(name: "Metallica", description: "Kill em all!"))
}
