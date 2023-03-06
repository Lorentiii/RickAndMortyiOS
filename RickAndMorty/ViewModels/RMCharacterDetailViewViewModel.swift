//
//  RMCharacterDetailViewViewModel.swift
//  RickAndMorty
//
//  Created by L's on 2023-03-06.
//

import Foundation

final class RMCharacterDetailViewViewModel {
    private let character: RMCharacter
    
    init(character: RMCharacter){
        self.character = character
    }
    
    public var title: String {
        character.name.uppercased()
    }
}
