//
//  ViewController.swift
//  Syoryuken
//
//  Created by tetsuya on 2022/10/17.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var syoryukenImage: UIImageView!
    
    var imageArraySyoryuken : Array<UIImage> = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let initialImage = UIImage(named: "attak1")
        syoryukenImage.image = initialImage
        
        // Do any additional setup after loading the view.
        while let syoryukenImage = UIImage(named: "attak\(imageArraySyoryuken.count+1)") {
            imageArraySyoryuken.append(syoryukenImage)
        }
    }
    
    @IBAction func syoryukenButton(_ sender: Any) {
        syoryukenImage.animationImages = imageArraySyoryuken
        syoryukenImage.animationDuration = 1.5
        syoryukenImage.animationRepeatCount = 1
        syoryukenImage.startAnimating()
    }
}
