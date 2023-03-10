//
//  RMEpisodeViewController.swift
//  RickAndMorty
//
//  Created by L's on 2023-03-02.
//

import UIKit
/// controller to show and search for episodes
final class RMEpisodeViewController: UIViewController, RMEpisodeListViewDelegate {

    private let episodeListView = RMEpisodeListView()
    
    
    override func viewDidLoad(){
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Episodes"
        setUpView()
        
    }
    
    private func setUpView(){
        episodeListView.delegate = self
        view.addSubview(episodeListView)
        NSLayoutConstraint.activate([
            episodeListView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            episodeListView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            episodeListView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            episodeListView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
                                    
        ])
    }
        
    func rmEpisodeListView(_ characterListView: RMEpisodeListView, didSelectEpisdoe episdoe: RMEpisode) {
        let viewModel = RMEpisodeDetailViewViewModel(endpointUrl: URL(string: episdoe.url))
        let detailVC = RMEpisodeDetailViewController(url: URL(string: episdoe.url))
        detailVC.navigationItem.largeTitleDisplayMode = .never
        navigationController?.pushViewController(detailVC, animated: true)
    }

}
