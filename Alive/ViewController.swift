//
//  ViewController.swift
//  Alive
//
//  Created by Rhapsody on 2019/2/21.
//  Copyright © 2019 Back to Bedlam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCard(withEmoji: "👻", on: sender)
    }
    
    @IBAction func secondTouchCard(_ sender: UIButton) {
        flipCard(withEmoji: "🎃", on: sender)
    }
    func flipCard(withEmoji emoji: String, on button: UIButton) {
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
        }else{
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 0, green: 0.3027052879, blue: 0.6462088227, alpha: 0.7737951144)
        }
    }
    

}

