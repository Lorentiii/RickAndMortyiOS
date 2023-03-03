//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by L's on 2023-03-02.
//

import UIKit

/// controller to show and search for characters
final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        title = "Characters"
        
        RMService.shared.execute(.listCharactersRequest, expecting:RMGetAllCharacterResponse.self) { result in
            switch result {
            case .success(let model):
                print("Total: " + String(model.info.count))
                print("Page Result count: " + String(model.results.count))
            case .failure(let error):
                print(String(describing: error))
            }
        }
    }

}
