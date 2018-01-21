//
//  PopVC.swift
//  Pixel-City
//
//  Created by Daniel Winship on 1/21/18.
//  Copyright © 2018 Daniel Winship. All rights reserved.
//

import UIKit

class PopVC: UIViewController {

    //Outlets
    @IBOutlet weak var popImageView: UIImageView!
    var passedImage:UIImage!
    
    func initData(forImage image:UIImage) {
       self.passedImage = image
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        popImageView.image = passedImage
        // Do any additional setup after loading the view.
    }

   
    

    

}
