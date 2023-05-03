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
    
    private var searchResultsHandler: (() -> Void)?
    
    init(config: RMSearchViewController.Config) {
        self.config = config
    }
    
    //public
    public func registerSearchResultsHandler(_ block: @escaping () -> Void){
        self.searchResultsHandler = block
    }
    
    public func set(query text: String) {
        self.searchText = text
    }
    
    public func executeSearch() {
        searchText = "Rick"
        var queryParams: [URLQueryItem] = [URLQueryItem(name: "name", value: searchText)]
      
        
        queryParams.append(contentsOf: optionMap.enumerated().compactMap({ _, element in
            let key: RMSearchInputViewViewModel.DynamicOption = element.key
            let value: String = element.value
            return URLQueryItem(name: key.queryArgument, value: value)
        } ))
        
        let request = RMRequest(endpoint: config.type.endpoint,
                                queryParameters: queryParams
        )
        
        
        
        RMService.shared.execute(request, expecting: RMGetAllCharacterResponse.self) {
            result in switch result {
            case .success(let model):
                print(model.results.count)
            case .failure:
                break
            }
        }
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
