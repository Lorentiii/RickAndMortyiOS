//
//  RMEpisodeDetailViewController.swift
//  RickAndMorty
//
//  Created by L's on 2023-03-09.
//

import UIKit

class RMEpisodeDetailViewController: UIViewController {

    private let url: URL?
    
    init(url: URL?) {
        self.url = url
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGreen
      title = "Episode"
    }

}
