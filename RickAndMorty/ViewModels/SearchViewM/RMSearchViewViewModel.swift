//
//  RMSearchViewViewModel.swift
//  RickAndMorty
//
//  Created by L's on 2023-04-14.
//

import Foundation

final class RMSearchViewViewModel {
    
    let config: RMSearchViewController.Config
    
    private var optionMapUpdateBlock: (((RMSearchInputViewViewModel.DynamicOption, String)) -> Void)?
    
    private var optionMap: [RMSearchInputViewViewModel.DynamicOption: String] = [:]
    
    private var searchText = ""
    
    init(config: RMSearchViewController.Config) {
        self.config = config
    }
    
    //public
    public func set(query text: String) {
        self.searchText = text
    }
    
    public func executeSearch() {
        
    }
    
    public func set(value: String, for option: RMSearchInputViewViewModel.DynamicOption ) {
        optionMap[option] = value
        let tuple = (option, value)
        optionMapUpdateBlock?(tuple)
    }
    
    public func registerOptionChangeBlock(_ block: @escaping((RMSearchInputViewViewModel.DynamicOption, String)) -> Void){
        self.optionMapUpdateBlock = block
    }
}
