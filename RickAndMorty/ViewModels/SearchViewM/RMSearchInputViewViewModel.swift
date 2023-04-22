//
//  RMSearchInputViewViewModel.swift
//  RickAndMorty
//
//  Created by L's on 2023-04-14.
//

import Foundation

final class RMSearchInputViewViewModel {
    private let type: RMSearchViewController.Config.`Type`
    
    enum DynamicOption: String {
        case status = "status"
        case gender = "gender"
        case locationType = "Location Type"
    }
    
    init(type: RMSearchViewController.Config.`Type`){
        self.type = type
        
    }
    
    public var hasDynamicOptions: Bool{
        switch self.type {
        case .character, .location:
            return true
        case .episode:
            return false
        
        }
    }
    public var options: [DynamicOption]{
        switch self.type {
        case .character:
            return [.status, .gender]
        case .location:
            return [.locationType]
        case .episode:
            return []
        
        }
    }
    public var searchPlaceHolderText: String {
        switch self.type {
        case .character:
            return "Character Name"
        case .location:
            return "Location Name"
        case .episode:
            return "Episode Title"
        
        }
    }
    
}
