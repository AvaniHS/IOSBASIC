//
//  thirdViewController.swift
//  segue1
//
//  Created by APPLE-20 on 26/02/19.
//  Copyright © 2019 tableviewproj. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class thirdViewController: UIViewController {
    var player: AVAudioPlayer = AVAudioPlayer()

    
    @IBAction func play(_ sender: Any) {
        player.play()
    }
    
    
    @IBAction func pause(_ sender: Any) {
        player.pause()
    }
    
    @IBAction func replay(_ sender: Any) {
        player.stop()
        player.play()
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        do{
            let AudioPath = Bundle.main.path(forResource: "Instument", ofType: "mp3")
            try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: AudioPath!) as URL)
            
        }
        catch{
            //error
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   

}
