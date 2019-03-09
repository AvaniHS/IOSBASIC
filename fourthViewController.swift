//
//  fourthViewController.swift
//  segue1
//
//  Created by APPLE-20 on 26/02/19.
//  Copyright © 2019 tableviewproj. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class fourthViewController: UIViewController {
    
    var Arr=[UIImage()]
    
    @IBOutlet weak var imageview: UIImageView!
    
   

    
    @IBOutlet weak var slider1: UISlider!
    
    
    @IBAction func next(_ sender: UIButton) {
       
        slider1.value += 1
        imageview.image = Arr[Int(slider1.value)]
    
    }
    
    
    @IBAction func previous(_ sender: UIButton) {
        slider1.value -= 1
        imageview.image = Arr[Int(slider1.value)]
    }
    
    
    @IBAction func slider(_ sender: UISlider) {
        let value = Int(sender.value)
        imageview.image = Arr[value]
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Arr = [UIImage(named:"image-1"),UIImage(named: "image-2"),UIImage(named:"image-3")] as! [UIImage]

        // Do any additional setup after loading the view.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
