//
//  ViewController.swift
//  ProductGuide
//
//  Created by Phonthep Aungkanukulwit on 6/10/2562 BE.
//  Copyright © 2562 Pony Nutnutcha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var data = ProductElement(productImageAtRow: "", productNameAtRow: "", productCostAtRow: "", detailNameAtRow: "", detailImageAtRow: "")
    
    let productsImage: [String] = ["ordinary1" , "ordinary2" , "ordinary3" , "ordinary4" , "ordinary5" , "ordinary6" , "ordinary7" , "ordinary8" , "ordinary9" , "ordinary10" ,
        "ordinary11" , "ordinary12"]
    
    let productsName: [String] = ["Ascorbyl Glucoside Solution 12%", "EUK 134 0.1%", "Granative Retinol 2% Emulsion", "Matrixyl 10% + HA", "Buffet", "100% Virgin Marula Oil", "100% Moroccan Argan Oil", "AHA 30% + BHA 2%", "Alpha Arbutin 2% + HA", "Hyaluronic Acid 2% + B5", "Niacinamide 10% + Zinc1%", "Lactic 5% + HA"]
    
     let imageDetail: [String] = ["detail12", "detail11", "detail10", "detail9", "detail8", "detail7", "detail6", "detail5", "detail4", "detail3", "detail2", "detail1" ]
    
    let productCost: [String] = ["510 THB", "388 THB", "455 THB", "486 THB", "608 THB", "464 THB", "333 THB", "376 THB", "394 THB", "333 THB", "299 THB", "327 THB"]
    
    let nameDetail: String = "Information"
    
    @IBOutlet weak var productsCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDetail" {
            let productDetail = segue.destination as! ProductDetail
            productDetail.product = data
        }
    }
}



extension ViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let imageProduct: String = productsImage[indexPath.row]
        let nameProduct: String = productsName[indexPath.row]
        let detailImage: String = imageDetail[indexPath.row]
        let costProduct: String = productCost[indexPath.row]
        let detailName: String = nameDetail
        data = ProductElement(productImageAtRow: imageProduct, productNameAtRow: nameProduct, productCostAtRow: costProduct, detailNameAtRow: detailName, detailImageAtRow: detailImage)
        
        performSegue(withIdentifier: "ShowDetail", sender: Any?.self)
    }
}



extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return productsName.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
         let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as! ProductsCollectionViewCell
        
        let image = productsImage[indexPath.row]
        let name = productsName[indexPath.row]
        cell.setupUI(image: image, name: name)
        return cell
    }
    
    
}
