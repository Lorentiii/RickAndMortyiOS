//
//  Extensions.swift
//  RickAndMorty
//
//  Created by L's on 2023-03-03.
//

import UIKit

extension UIView{
    func addSubviews(_ views: UIView...) {
        views.forEach({
            addSubview($0)
        })
    }
}
