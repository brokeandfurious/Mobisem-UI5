//
//  MainCollectionViewCell.swift
//  Mobisem-UI5
//
//  Created by Murat Ekrem Kolcalar on 4/24/18.
//  Copyright © 2018 murtilicious. All rights reserved.
//

import UIKit

class MainCollectionViewCell: UICollectionViewCell {
    
    var product: Product! {
        
        didSet {
            
            print("set")
            
        }
        
    }
    
}
