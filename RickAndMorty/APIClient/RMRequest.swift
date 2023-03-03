//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by L's on 2023-03-02.
//

import Foundation

/// object tht reps a single api call 
final class RMRequest{
    
    private struct Constants{
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    /// endpoint
    private let endpoint: RMEndpoint
    

    private let pathComponents: Set<String>
    
    private let queryParameters: [URLQueryItem]
    
    
    /// constructed url format
    private var urlString: String{
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty{
            pathComponents.forEach({
                string += "/\($0)"
            })
            
        }
    
    if !queryParameters.isEmpty{
        string += "?"
        let argumentString = queryParameters.compactMap({
            guard let value = $0.value else {return nil}
            return "\($0.name)=\(value)"
        }).joined(separator: "&")
        
        string += argumentString
        }
    
    
        return string
    }
    // constructed url
    public var url: URL?{
        return URL(string: urlString)
        
        
    }
    
    public let httpMethod = "GET"
    
    public init(endpoint: RMEndpoint,
                queryParameters:[URLQueryItem] = [],
                pathComponents: Set<String> = [])
    {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
    
}
