//
//  ViewController.swift
//  swiftbook
//
//  Created by Данила Кардашевский on 28.11.2022.
//

import UIKit
enum CurrentLight{
    case red,yellow,green
}

class ViewController: UIViewController {
    
    @IBOutlet var Red: UIView!
    @IBOutlet var Yellow: UIView!
    @IBOutlet var Green: UIView!
    @IBOutlet var ButtonStart: UIButton!
    
    private var currentLight = CurrentLight.red
    private var lightOn : CGFloat = 1
    private var lightOff : CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Red.alpha = lightOff
        Yellow.alpha = lightOff
        Green.alpha = lightOff
        
        Red.layer.cornerRadius = 60
        Yellow.layer.cornerRadius = 60
        Green.layer.cornerRadius = 60
    }
    
    
    @IBAction func ButtonStart(_ sender: Any) {
        
        ButtonStart.setTitle("Next", for: .normal)
        
        
        switch currentLight{
        case .red:
            Red.alpha = lightOn
            Green.alpha = lightOff
            currentLight = .yellow
        case .yellow:
            Red.alpha = lightOff
            Yellow.alpha = lightOn
            currentLight = .green
            
        case.green:
            Yellow.alpha = lightOff
            Green.alpha = lightOn
            currentLight = .red
            
            
        }
        
    }
    
    
    
}

