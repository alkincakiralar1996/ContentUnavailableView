//
//  CharacterListViewModel.swift
//  ContentUnavailableView
//
//  Created by Alkın Çakıralar on 29.01.2024.
//

import SwiftUI

@Observable
class CharacterListViewModel {
    var viewState: ViewState
    var contacts: [Character] = []
    var term = ""

    init() {
        viewState = .list(contacts: Character.getDummyContactList())
    }
    
    func searchCharacter(for term: String) {
        guard !term.isEmpty else {
            withAnimation {
                viewState = .list(contacts: Character.getDummyContactList())
            }
            return
        }
        
        let searchedList = Character.getDummyContactList().filter { $0.name.uppercased().contains(term.uppercased()) }
        
        guard !searchedList.isEmpty else {
            withAnimation {
                viewState = .empty
            }
            return
        }
        
        withAnimation {
            viewState = .list(contacts: searchedList)
        }
    }

    enum ViewState {
        case list(contacts: [Character])
        case empty
    }
}
