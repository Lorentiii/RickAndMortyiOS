//
//  RMSearchView.swift
//  RickAndMorty
//
//  Created by L's on 2023-04-14.
//

import UIKit

final class RMSearchView: UIView {
    
    private  let viewModel: RMSearchViewViewModel
    
    private let SearchInputView = RMSearchInputView()
    
    private let noResultsView = RMNoSearchResultsView()
    
    // init 
    init(frame: CGRect, viewModel: RMSearchViewViewModel) {
        self.viewModel = viewModel
        super.init(frame: frame)
        backgroundColor = .systemBackground
        translatesAutoresizingMaskIntoConstraints = false
        addSubviews(noResultsView, SearchInputView)
        addConstraints()
        SearchInputView.configure(with: RMSearchInputViewViewModel(type: viewModel.config.type))
    }

    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func addConstraints(){
        NSLayoutConstraint.activate([
            // search input
            SearchInputView.topAnchor.constraint(equalTo: topAnchor),
            SearchInputView.leftAnchor.constraint(equalTo: leftAnchor),
            SearchInputView.rightAnchor.constraint(equalTo: rightAnchor),
            SearchInputView.heightAnchor.constraint(equalToConstant: viewModel.config.type == .episode ? 55 : 110),
            
            // no results
            noResultsView.widthAnchor.constraint(equalToConstant: 150),
            noResultsView.heightAnchor.constraint(equalToConstant: 150),
            noResultsView.centerXAnchor.constraint(equalTo: centerXAnchor),
            noResultsView.centerYAnchor.constraint(equalTo: centerYAnchor),

            
        ])
    }
    
}

extension RMSearchView: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
    }
}
