//
//  ViewController.swift
//  Mobisem-UI5
//
//  Created by Murat Ekrem Kolcalar on 4/24/18.
//  Copyright © 2018 murtilicious. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    // VARS
    var products = Product.createProduct()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = products[0].featuredImage
        imageView.isUserInteractionEnabled = true
        
        let touchRecognizer = UITapGestureRecognizer(target: self, action: #selector(handleTap))
        touchRecognizer.numberOfTapsRequired = 1
        imageView.addGestureRecognizer(touchRecognizer)
        
    }
    
    @objc func handleTap() {
        let mainStoryBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let detailVC = mainStoryBoard.instantiateViewController(withIdentifier: "DetailVC") as! DetailViewController
        detailVC.product = self.products[0]
        
        present(detailVC, animated: true, completion: nil)
        
        print("success")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

