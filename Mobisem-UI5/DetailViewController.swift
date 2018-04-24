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
