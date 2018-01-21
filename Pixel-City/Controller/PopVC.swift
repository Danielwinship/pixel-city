//
//  PopVC.swift
//  Pixel-City
//
//  Created by Daniel Winship on 1/21/18.
//  Copyright © 2018 Daniel Winship. All rights reserved.
//

import UIKit

class PopVC: UIViewController,UIGestureRecognizer {

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

    func addDoubleTap() {
        let doubleTap = UITapGestureRecognizer(target: self, action: #selector(screenWasDoubleTapped))
        doubleTap.numberOfTapsRequired = 2
        doubleTap.delegate = self
        view.addGestureRecognizer(doubleTap)
    }
   
   @objc func screenWasDoubleTapped() {
        dismiss(animated: true, completion: nil)
    }

    

}
