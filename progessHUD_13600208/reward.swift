//
//  reward.swift
//  progessHUD_13600208
//
//  Created by ICT on 16/11/2561 BE.
//  Copyright © 2561 Pajongpong Luangkumdang. All rights reserved.
//

import Foundation
import UIKit

class reward: UIViewController {

    var randomGroup : Int = 0
    
    let groupArray = ["01", "02", "03", "04", "05", "06", "07"]
    
    
    @IBOutlet weak var showPic: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        }
    
    
    @IBAction func randomButton(_ sender: UIButton) {
    changeGroup()
    }
    func changeGroup() {
        randomGroup = Int(arc4random_uniform(7))
    
        showPic.image = UIImage(named: groupArray[randomGroup])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        changeGroup()
    }
    
}
