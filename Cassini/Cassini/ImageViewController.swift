//
//  ImageViewController.swift
//  Cassini
//
//  Created by cci-loaner on 5/20/17.
//  Copyright © 2017 Kune Studios. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {
    
    

    
    var image: UIImage? = nil
    @IBOutlet weak var imageV: UIImageView!
    
    
    override func viewDidLoad() {
        imageURL = URL(string: "http://stanford.edu/about/images/intro_about.jpg")
    }
    var imageURL: URL? {
        //Didset represents what happens
        //When somebody sets the URL
        didSet {
            if(view.window != nil){
                fetchUrl()
            }
            
        }
    }
    
    func fetchUrl(){
        if let url = imageURL {
            let urlContents =
                
                try? Data(contentsOf: url)
            if let imageData = urlContents {
                image = UIImage(data :imageData)!
                imageV.image = image

            }
        }
        
    }

}
