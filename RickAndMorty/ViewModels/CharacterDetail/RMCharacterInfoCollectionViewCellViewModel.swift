//
//  RMCharacterInfoCollectionViewCellViewModel.swift
//  RickAndMorty
//
//  Created by L's on 2023-03-07.
//

import UIKit

final class RMCharacterInfoCollectionViewCellViewModel{
    private let type: `Type`
    
    private let value: String
    
    static let dateFormatter: DateFormatter = {
       
        let formatter = DateFormatter()
        formatter.dateFormat = "YYYY-MM-dd'T'HH:mm:ss.SSSSZ"
        formatter.timeZone = .current
        return formatter
    }()
    
    static let shortDateFormatter: DateFormatter = {
       
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        formatter.timeZone = .current
        return formatter
    }()
    
    public var title: String {
        self.type.displayTitle
    }
    
    public var displayValue: String {
        
        if value.isEmpty{return "None"}
      
        if let date = Self.dateFormatter.date(from: value),
            type == .created{
            return Self.shortDateFormatter.string(from: date)
        }
        return value
    }
    
    public var iconImage: UIImage? {
        return type.IconImage
    }
    
    public var tintColor: UIColor{
        return type.tintColor
    }
    enum `Type`: String {
        case status
        case gender
        case type
        case species
        case origin
        case location
        case created
        case episodeCount
        
        var tintColor: UIColor {
            switch self {
            case .status:
                return .systemBlue
            case .gender:
                return .systemBlue
            case .type:
                return .systemBlue
            case .species:
                return .systemBlue
            case .origin:
                return .systemBlue
            case .location:
                return .systemBlue
            case .created:
                return .systemBlue
            case .episodeCount:
                return .systemBlue
            }
        }

        
        var IconImage: UIImage? {
            switch self {
            case .status:
                return UIImage(systemName: "")
            case .gender:
                return UIImage(systemName: "")
            case .type:
                return UIImage(systemName: "")
            case .species:
                return UIImage(systemName: "")
            case .origin:
                return UIImage(systemName: "")
            case .location:
                return UIImage(systemName: "")
            case .created:
                return UIImage(systemName: "")
            case .episodeCount:
                return UIImage(systemName: "")
            }
        }
        
        
        var displayTitle: String {
            switch self {
            case .status,
                  .gender,
                  .type,
                  .species,
                  .origin,
                  .created,
                  .location:
                 return rawValue.uppercased()
            case .episodeCount:
                return "Episode Count"
            }
        }
    }
    
    init(type: `Type`, value: String) {
        self.value = value
        self.type = type
    }
}
