//
//  SecondViewController.swift
//  TableViewOOP
//
//  Created by YASIN AKCA on 17.04.2020.
//  Copyright © 2020 YASIN AKCA. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    var chosenName: String?
    var chosenImage: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        nameLabel.text = chosenName
        imageView.image = chosenImage
    }

}
