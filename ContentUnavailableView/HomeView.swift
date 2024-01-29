//
//  HomeView.swift
//  ContentUnavailableView
//
//  Created by Alkın Çakıralar on 29.01.2024.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            List {
                Section("") {
                    NavigationLink("Navigate To Character List Screen") {
                        CharacterListView()
                    }
                }
                
                Section("Basic usage with title and image") {
                    ContentUnavailableView(
                        "No Result Found",
                        systemImage: "list.bullet.clipboard"
                    )
                }
                
                Section("Complex usage title with view, description and action buttons") {
                    ContentUnavailableView(label: {
                        Label("No Mail", systemImage: "tray.fill")
                    }, description: {
                        Text("New mails you receive will appear here.")
                    }, actions: {
                        Button(action: {}) {
                            Text("Refresh")
                        }
                    })
                }
            }
            .navigationTitle("Home")
        }
    }
}

#Preview {
    HomeView()
        .preferredColorScheme(.dark)
}
