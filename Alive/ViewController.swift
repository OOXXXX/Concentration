//
//  ViewController.swift
//  Alive
//
//  Created by Rhapsody on 2019/2/21.
//  Copyright © 2019 Back to Bedlam. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    var flipCounts = 0
    {
        didSet
        {
            flipCountLabel.text = "Counts: \(flipCounts)"
        }
    }
    
    @IBOutlet weak var flipCountLabel: UILabel!
    
    
    @IBAction func touchCard(_ sender: UIButton)
    {
        flipCounts += 1
        flipCard(withEmoji: "👻", on: sender)
        
        let generator = UIImpactFeedbackGenerator(style: .medium)
        generator.impactOccurred()
        
            
    }
    
    @IBAction func secondTouchCard(_ sender: UIButton)
    {
        flipCounts += 1
        flipCard(withEmoji: "🎃", on: sender)
        
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(.success)
        
        
    }
    
    @IBAction func thirdTouchCard(_ sender: UIButton)
    {
        flipCounts += 1
        flipCard(withEmoji: "🐵", on: sender)
        
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(.warning)
    }
    
    
    @IBAction func fourthTouchCard(_ sender: UIButton) {
        flipCounts += 1
        flipCard(withEmoji: "🐷", on: sender)
        
        let generator = UISelectionFeedbackGenerator()
        generator.selectionChanged()
    }
    
    
    @IBAction func fifthTouchCard(_ sender: UIButton)
    {
        flipCounts += 1
        flipCard(withEmoji: "🐔", on: sender)
        
        let generator = UIImpactFeedbackGenerator(style: .medium)
        generator.impactOccurred()
    }
    
    @IBAction func sixthTouchCard(_ sender: UIButton)
    {
        flipCounts += 1
        flipCard(withEmoji: "🐶", on: sender)
        
        let generator = UIImpactFeedbackGenerator(style: .medium)
        generator.impactOccurred()
    }
    
    
    func flipCard(withEmoji emoji: String, on button: UIButton)
    {
        if button.currentTitle == emoji
        {
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
        }
        else
        {
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 0, green: 0.3027052879, blue: 0.6462088227, alpha: 0.7737951144)
        }
    }
    

}

