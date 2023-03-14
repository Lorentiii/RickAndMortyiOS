//
//  RMEndpoint.swift
//  RickAndMorty
//
//  Created by L's on 2023-03-02.
//

import Foundation

/// represents uniquie api endpoint
@frozen enum RMEndpoint: String, CaseIterable, Hashable{
    /// endpoint to get the following character, location, episode info
    case character
    case location
    case episode
    
}
