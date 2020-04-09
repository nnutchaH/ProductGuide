//
//  ProductsCollectionViewCell.swift
//  ProductGuide
//
//  Created by Phonthep Aungkanukulwit on 6/10/2562 BE.
//  Copyright © 2562 Pony Nutnutcha. All rights reserved.
//

import UIKit

class ProductsCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productLabel: UILabel!
    
    func setupUI(image: String, name: String) {
        productImage.image = UIImage(named: image)
        productLabel.text = name
    }
    
}
