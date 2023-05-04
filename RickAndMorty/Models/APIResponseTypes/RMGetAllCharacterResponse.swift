//
//  RMGetCharacterResponse.swift
//  RickAndMorty
//
//  Created by L's on 2023-03-03.
//

import Foundation


struct RMGetAllCharactersResponse: Codable{
    
    struct Info: Codable{
            
        let count: Int
        let pages: Int
        let next: String?
        let prev: String?
        
    }
    
    let info: Info
    let results: [RMCharacter]
}
