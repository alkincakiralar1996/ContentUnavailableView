//
//  CharacterListView.swift
//  ContentUnavailableView
//
//  Created by Alkın Çakıralar on 29.01.2024.
//

import SwiftUI

struct CharacterListView: View {
    @State private var viewModel = CharacterListViewModel()

    var body: some View {
        VStack {
            switch viewModel.viewState {
            case let .list(contacts):
                List(contacts) { contact in
                    HStack(spacing: 16) {
                        if let photo = contact.photo {
                            AsyncImage(url: photo) { image in
                                image
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 60, height: 60)
                                    .cornerRadius(30)
                            } placeholder: {
                                ProgressView()
                            }
                        }
                        Text(contact.name)
                            .bold()
                            .font(.title2)
                    }.padding(.bottom, 12)
                }
                .padding(.top, 12)
                .listStyle(.plain)
            case .empty:
                ContentUnavailableView.search
            }
        }
        .searchable(text: $viewModel.term, prompt: "Search Character")
        .navigationTitle("💰 La Casa De Papel")
        .onChange(of: viewModel.term) { _, newValue in
            viewModel.searchCharacter(for: newValue)
        }
    }
}

#Preview {
    CharacterListView()
        .preferredColorScheme(.dark)
}
