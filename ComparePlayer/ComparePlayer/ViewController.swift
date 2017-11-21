//
//  ViewController.swift
//  ComparePlayer
//
//  Created by Sumin Hong on 2017. 11. 21..
//  Copyright © 2017년 Sumin Hong. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class ViewController: UIViewController {

    var video1: String?
    var video2: String?
    
    var player:AVPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        video1 = Bundle.main.path(forResource: "SampleVideo", ofType: ".mp4")
        video2 = Bundle.main.path(forResource: "SampleVideo2", ofType: ".mp4")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "seguePlayerController"{
            let videoURL = NSURL(fileURLWithPath: video1!)
            player = AVPlayer(url: videoURL as URL)
            
            let destination = segue.destination as! AVPlayerViewController
            destination.player = player
        }
        if segue.identifier == "seguePlayerLayer"{
            let destination = segue.destination as! VideoViewController
            destination.video = video2
        }
    }

}

