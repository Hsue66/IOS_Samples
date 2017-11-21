//
//  VideoViewController.swift
//  ComparePlayer
//
//  Created by Sumin Hong on 2017. 11. 21..
//  Copyright © 2017년 Sumin Hong. All rights reserved.
//

import UIKit
import AVFoundation

class VideoViewController: UIViewController {

    var video: String?
    @IBOutlet weak var vView: UIView!
    
    var player: AVPlayer!
    var playerLayer: AVPlayerLayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let videoURL = NSURL(fileURLWithPath: video!)
        player = AVPlayer(url: videoURL as URL)
        playerLayer = AVPlayerLayer(player: player)
        playerLayer.videoGravity = .resize
        
        vView.layer.addSublayer(playerLayer)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        player.play()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        playerLayer.frame = vView.bounds
    }

}
