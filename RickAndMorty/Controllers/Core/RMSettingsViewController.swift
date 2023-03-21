//
//  RMSettingsViewController.swift
//  RickAndMorty
//
//  Created by L's on 2023-03-02.
//

import UIKit

/// controller to show various options and settings
final class RMSettingsViewController: UIViewController {
    
    private let viewModel = RMSettingsViewViewModel(
        cellViewModels: RMSettingsOption.allCases.compactMap({
            return RMSettingsCellViewModel(type: $0)
        })
    )

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        title = "Settings"
    }
    

  
}
