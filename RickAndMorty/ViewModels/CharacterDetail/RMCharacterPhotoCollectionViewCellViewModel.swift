//
//  RMCharacterPhotoCollectionViewCellViewModel.swift
//  RickAndMorty
//
//  Created by L's on 2023-03-07.
//

import Foundation

final class RMCharacterPhotoCollectionViewCellViewModel{
    
    private let imageUrl: URL?

    init(imageUrl: URL?){
        self.imageUrl = imageUrl
    }
    
    public func fetchImage(completion: @escaping (Result<Data, Error>) -> Void) {
        guard let imageUrl = imageUrl else {
            completion(.failure(URLError(.badURL)))
            return
        }
        RMImageLoader.shared.downloadImage(imageUrl, completion: completion)
    }
}
