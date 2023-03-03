//
//  RMLocation.swift
//  RickAndMorty
//
//  Created by L's on 2023-03-02.
//

import Foundation

struct RMLocation: Codable{
    
    let id: String
    let name: String
    let type: String
    let dimension: String
    let residents:[String]
    let url: String
    let created: String
    
}
