//
//  MusicBandView.swift
//  Lesson1
//
//  Created by Вячеслав on 03.10.2023.
//

import SwiftUI

struct MusicBandView: View {
    
    private let band: Band
    
    init(_ band: Band) {
        self.band = band
    }
    
    var body: some View {
        VStack {
            Image(band.name)
                .resizable()
                .frame(width: 250, height: 250)
                .cornerRadius(5.0)
            
            Text(band.description)
                .multilineTextAlignment(.center)
            
            Spacer()
        }.navigationTitle(band.name)
    }
}

#Preview {
    MusicBandView(Band(name: "Metallica", description: "The best of the best ))"))
}
