//
//  RMService.swift
//  RickAndMorty
//
//  Created by L's on 2023-03-02.
//

import Foundation

/// primary api service object to get r&m data
final class RMService {
    
    ///shared singleton instance
    static let shared  = RMService()
    /// private constructor
    private init(){
        
    }
    
    /// send r&m api call
    /// - Parameters:
    ///   - request: request instance
    ///   - completion: callback data or error
    public func execute(_ request: RMRequest, completion: @escaping () -> Void){
        
    }
}
