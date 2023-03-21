//
//  RMSettingsCellViewModel.swift
//  RickAndMorty
//
//  Created by L's on 2023-03-21.
//

import UIKit

struct RMSettingsCellViewModel: Identifiable, Hashable {
    
    let id = UUID()
    // priv
    
    private let type: RMSettingsOption
    
    
    // MARK INIT
    
   
    
    init(type: RMSettingsOption) {
        self.type = type
    }
    
    //MARK PUBLIC
    
    public var image: UIImage? {
        return type.iconImage
    }
    public var title: String{
        return type.displayTitle
    }
    
    public var iconContainerColor: UIColor{
        return type.iconContainerColor
    }
}
