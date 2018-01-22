//
//  PopVC.swift
//  Pixel-City
//
//  Created by Daniel Winship on 1/21/18.
//  Copyright © 2018 Daniel Winship. All rights reserved.
//

import UIKit

class PopVC: UIViewController,UIGestureRecognizerDelegate {

    //Outlets
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var popImageView: UIImageView!
    var passedImage:UIImage!
    
    func initData(forImage image:UIImage, forTitle title:String?) {
       self.passedImage = image
        if  let titleUnwrapped1 = title {
            
                print(titleUnwrapped1)
                titleLabel.text = titleUnwrapped1
            
       
        } else{
            return
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        popImageView.image = passedImage
        addDoubleTap()
        
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
