//
//  ViewController.swift
//  segue1
//
//  Created by APPLE-20 on 26/02/19.
//  Copyright © 2019 tableviewproj. All rights reserved.
//

import UIKit
import AVKit

class ViewController: UIViewController {

    
    @IBAction func video(_ sender: Any) {
        if let path = Bundle.main.path(forResource: "Animals",ofType:"mp4"){
            let segue1 = AVPlayer(url:URL(fileURLWithPath: path))
            let VideoPlayer = AVPlayerViewController()
            VideoPlayer.player = segue1
            present(VideoPlayer,animated:true,completion: {
                segue1.play()
            })
        }
        
        
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

