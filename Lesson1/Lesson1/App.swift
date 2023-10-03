//
//  Lesson1App.swift
//  Lesson1
//
//  Created by Вячеслав on 24.09.2023.
//

import SwiftUI

@main
struct Lesson1App: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(MusicBandsViewModel(bandsProvider: BandsProvider.shared))
        }
    }
}
