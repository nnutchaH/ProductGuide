//
//  ProductDetail.swift
//  ProductGuide
//
//  Created by Phonthep Aungkanukulwit on 6/10/2562 BE.
//  Copyright © 2562 Pony Nutnutcha. All rights reserved.
//

import Foundation
import UIKit
class ProductDetail: ViewController {
    
    var product: ProductElement = ProductElement(productImageAtRow: "", productNameAtRow: "", productCostAtRow: "", detailNameAtRow: "", detailImageAtRow: "")
    
    @IBOutlet weak var detailProductImage: UIImageView!
    @IBOutlet weak var detailProductName: UILabel!
    @IBOutlet weak var detailProductCost: UILabel!
    @IBOutlet weak var detailName: UILabel!
    @IBOutlet weak var detailImage: UIImageView!
    
    override func viewDidLoad() {
        detailProductImage.image = UIImage(named: product.productImageAtRow)
        detailProductName.text = product.productNameAtRow
        detailProductCost.text = product.productCostAtRow
        detailName.text = product.detailNameAtRow
        detailImage.image = UIImage(named: product.detailImageAtRow)
    }
    
}


