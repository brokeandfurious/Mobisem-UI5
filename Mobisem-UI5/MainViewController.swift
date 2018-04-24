//
//  MainViewController.swift
//  Mobisem-UI5
//
//  Created by Murat Ekrem Kolcalar on 4/24/18.
//  Copyright © 2018 murtilicious. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    // OUTLETS
    @IBOutlet weak var scrollView: UIScrollView!
    
    // VARS
    var products = Product.createProduct()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension MainViewController: UICollectionViewDataSource {

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let p = indexPath.item
        let cell: MainCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "MainCellIdentifier", for: indexPath) as! MainCollectionViewCell
        cell.product = self.products[p]
        return cell
    }
    
}


