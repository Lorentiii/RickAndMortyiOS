//
//  RMCharacterEpisodeCollectionViewCellViewModel.swift
//  RickAndMorty
//
//  Created by L's on 2023-03-07.
//

import Foundation

protocol RMEpisodeDataRender {
    var name: String { get}
    var air_date: String { get}
    var episode: String { get}
}

final class RMCharacterEpisodeCollectionViewCellViewModel: Hashable, Equatable{
    
    
    
    private let episodeDateUrl: URL?
    private var dataBlock: ((RMEpisodeDataRender) -> Void)?
    private var isFetching = false
    
    private var episode: RMEpisode?{
        didSet{
            guard let model = episode else {
                return
            }
            self.dataBlock?(model)
        }
    }
    
    init(episodeDateUrl: URL?){
        self.episodeDateUrl = episodeDateUrl
    }
    
    public func registerForData(_ block: @escaping(RMEpisodeDataRender)-> Void){
        self.dataBlock = block
    }
    
    public func fetchEpisode(){
        guard !isFetching else {
            if let model = episode {
                dataBlock?(model)
            }
            return
        }
        guard let url = episodeDateUrl,
                let request = RMRequest(url: url) else{
            return
        }
        isFetching = true
        RMService.shared.execute(request, expecting: RMEpisode.self){ [weak self] result in
            switch result {
            case .success(let model):
                DispatchQueue.main.async {
                    self?.episode = model
                }
            case .failure(let failure):
                print(String(describing: failure))
            }
        }
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(self.episodeDateUrl?.absoluteString ?? "")
    }
    static func == (lhs: RMCharacterEpisodeCollectionViewCellViewModel, rhs: RMCharacterEpisodeCollectionViewCellViewModel) -> Bool {
        return lhs.hashValue == rhs.hashValue
    }
    
}
