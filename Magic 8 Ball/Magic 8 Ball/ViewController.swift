//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by James Kip on 5/9/19.
//  Copyright © 2019 James Kip. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    func askAnything() {
        let randomBallNumber : Int = Int.random(in : 0 ... 4)
        imageView.image = UIImage(named : ballArray[randomBallNumber])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        askAnything()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        askAnything()
    }
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        askAnything()
    }


}

