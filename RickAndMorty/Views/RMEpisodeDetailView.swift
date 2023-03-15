//
//  RMEpisodeDetailView.swift
//  RickAndMorty
//
//  Created by L's on 2023-03-13.
//

import UIKit

class RMEpisodeDetailView: UIView {

    private var viewModel: RMEpisodeDetailViewViewModel?
    
    private var collectionView: UICollectionView?
    
    private let spinner: UIActivityIndicatorView = {
        let spinner = UIActivityIndicatorView()
            spinner.translatesAutoresizingMaskIntoConstraints = false
            return spinner
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .systemRed
        self.collectionView = createCollectionView()
        addConstraints()
    }
    required init?(coder: NSCoder){
        fatalError("Unsupported")
    }

    private func addConstraints(){
       NSLayoutConstraint.activate([
//            detailView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
//            detailView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
//            detailView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
//            detailView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ])
    }
    
    private func createCollectionView() -> UICollectionView{
        
    }
    
    public func configure(with viewModel: RMEpisodeDetailViewViewModel){
        self.viewModel = viewModel
    }
}
