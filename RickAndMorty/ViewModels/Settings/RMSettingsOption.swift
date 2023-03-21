//
//  RMSettingsOption.swift
//  RickAndMorty
//
//  Created by L's on 2023-03-21.
//

import UIKit

enum RMSettingsOption: CaseIterable {
    case rateApp
    case contactUs
    case terms
    case privacy
    case apiReference
    case viewSeries
    case viewCode
    
    var displayTitle: String {
        switch self {
        case .rateApp:
            return "Rate App"
        case .contactUs:
            return "Contact Us"
        case .terms:
            return "Terms And Conditions"
        case .privacy:
            return "Privacy"
        case .apiReference:
            return "API Info"
        case .viewSeries:
            return "View Series"
        case .viewCode:
            return "View Code"
        }
    }
    
    var iconContainerColor: UIColor{
        switch self {
        case .rateApp:
            return .systemBlue
        case .contactUs:
            return .systemYellow
        case .terms:
            return .systemRed
        case .privacy:
            return .systemCyan
        case .apiReference:
            return .systemMint
        case .viewSeries:
            return .systemPink
        case .viewCode:
            return .systemPink
        }
    }
    
    var iconImage: UIImage? {
        switch self {
        case .rateApp:
            return UIImage(systemName: "star.fill")
        case .contactUs:
            return UIImage(systemName: "paperplane")
        case .terms:
            return UIImage(systemName: "doc")
        case .privacy:
            return UIImage(systemName: "lock")
        case .apiReference:
            return UIImage(systemName: "list.clipboard")
        case .viewSeries:
            return UIImage(systemName: "tv.fill")
        case .viewCode:
            return UIImage(systemName: "hammer.fill")
        }
    }
}
