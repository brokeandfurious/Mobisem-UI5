//
//  DetailViewController.swift
//  Mobisem-UI5
//
//  Created by Murat Ekrem Kolcalar on 4/24/18.
//  Copyright © 2018 murtilicious. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var backgroundImageView: UIImageView!
    
    // VARS
    var allProducts = Product.createProduct()
    var product: Product?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if product !== nil {
            print("product found")
            backgroundImageView.image = product?.featuredImage
        } else {
            print("why is product nil")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension DetailViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return allProducts.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let p = indexPath.item
        let cell: DetailCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "DetailCellIdentifier", for: indexPath) as! DetailCollectionViewCell
        cell.product = self.allProducts[p]
        return cell
    }
    
}
