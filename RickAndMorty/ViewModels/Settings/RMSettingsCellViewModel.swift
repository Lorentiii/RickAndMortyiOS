//
//  RMSettingsCellViewModel.swift
//  RickAndMorty
//
//  Created by L's on 2023-03-21.
//

import UIKit

struct RMSettingsCellViewModel: Identifiable{
    
    let id = UUID()
    // priv
    
    public let type: RMSettingsOption
    public let onTapHandler: (RMSettingsOption) -> Void
    
    
    // MARK INIT
    
   
    
    init(type: RMSettingsOption, onTapHandler: @escaping (RMSettingsOption) -> Void) {
        self.type = type
        self.onTapHandler = onTapHandler
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
