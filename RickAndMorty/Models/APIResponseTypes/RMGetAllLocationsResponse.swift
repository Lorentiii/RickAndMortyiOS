//
//
//  RickAndMorty
//
//  Created by L's on 2023-04-04.
//

import Foundation

struct RMGetAllLocationsResponse: Codable{
    
    struct Info: Codable {
        let count: Int
        let pages: Int
        let next: String?
        let prev: String?
        
    }
    
    let info: Info
    let results: [RMLocation]
}
