//
//  ViewController.swift
//  Dicey
//
//  Created by Deepak on 27/09/18.
//  Copyright © 2018 Deepak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImage1: UIImageView!
    @IBOutlet weak var diceImage2: UIImageView!
    
    var randInt1 : Int = 0
    var randInt2 : Int = 0
    
    let imgArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        setImageFunc()
    }

    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        setImageFunc()
    }
    
    @IBAction func rollButton(_ sender: Any) {
        setImageFunc()
    }
    
    func setImageFunc()
    {
        randInt1 = Int.random(in: 0...5)
        randInt2 = Int.random(in: 0...5)
        
        diceImage1.image = UIImage(named: imgArray[randInt1])
        diceImage2.image = UIImage(named: imgArray[randInt2])
        
    }
    
}

