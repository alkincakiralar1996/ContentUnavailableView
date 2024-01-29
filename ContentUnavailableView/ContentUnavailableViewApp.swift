//
//  ContentUnavailableViewApp.swift
//  ContentUnavailableView
//
//  Created by Alkın Çakıralar on 29.01.2024.
//

import SwiftUI

@main
struct ContentUnavailableViewApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .preferredColorScheme(.dark)
        }
    }
}

#Preview {
    HomeView()
}
