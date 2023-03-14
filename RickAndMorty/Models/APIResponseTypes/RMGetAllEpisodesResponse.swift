//
//  RMGetAllEpisodesResponse.swift
//  RickAndMorty
//
//  Created by L's on 2023-03-13.
//

import Foundation

struct RMGetAllEpisodesResponse: Codable{
    
    struct Info: Codable{
            
        let count: Int
        let pages: Int
        let next: String?
        let prev: String?
        
    }
    
    let info: Info
    let results: [RMEpisode]
}
