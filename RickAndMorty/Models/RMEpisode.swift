//
//  RMEpisode.swift
//  RickAndMorty
//
//  Created by L's on 2023-03-02.
//

import Foundation


struct RMEpisodes: Codable{
    
       let id: Int
       let name: String
       let air_date: String
       let episode: String
    let characters: [String]
    let url: String
       let created: String
    
    
}
