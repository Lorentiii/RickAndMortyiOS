//
//  RMLocationTableViewCellViewModel.swift
//  RickAndMorty
//
//  Created by L's on 2023-04-04.
//

import Foundation

struct RMLocationTableViewCellViewModel: Hashable, Equatable {
    static func == (lhs: RMLocationTableViewCellViewModel, rhs: RMLocationTableViewCellViewModel) -> Bool {
        return lhs.location.id == rhs.location.id
    }
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
        hasher.combine(location.id)
        hasher.combine(dimension) 
        hasher.combine(type)

    }
    
    private let location: RMLocation
    
    init(location: RMLocation) {
        self.location = location
    }
    
    public var name: String {
        return location.name
    }
    
    public var type: String {
        return location.type
    }
    
    public var dimension: String {
        return location.dimension
    }
}