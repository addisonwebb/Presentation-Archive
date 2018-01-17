//
//  ViewController.swift
//  CarthageDemo
//
//  Created by Addison Webb on 9/27/16.
//  Copyright © 2016 Code Bits LLC. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // download image
        Alamofire.request("https://avatars2.githubusercontent.com/u/9146792?v=3&s=400").response { response in
            if let data = response.data, let image = UIImage(data: data) {
                self.imageView.image = image
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

