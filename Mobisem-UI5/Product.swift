//
//  Product.swift
//  Mobisem-UI5
//
//  Created by Murat Ekrem Kolcalar on 4/24/18.
//  Copyright © 2018 murtilicious. All rights reserved.
//

import UIKit

class Product {
    // MARK - API
    var title = ""
    var featuredImage: UIImage!
    
    init(title: String, featuredImage: UIImage!) {
        self.title = title
        self.featuredImage = featuredImage
    }
    
    // MARK - Private
    
    static func createProduct() -> [Product] {
        return [
            Product(title: "Stylish Chair", featuredImage: UIImage(named: "concept-chair")!),
            Product(title: "Another Stylish Chair", featuredImage: UIImage(named: "concept-chair-2")!),
            Product(title: "Another Chair", featuredImage: UIImage(named: "concept-chair")!),
            Product(title: "Test Chair", featuredImage: UIImage(named: "concept-chair-2")!)
        ]
    }
}
