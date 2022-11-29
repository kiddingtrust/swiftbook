//
//  ViewController.swift
//  colorpicker
//
//  Created by Данила Кардашевский on 28.11.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var viewColor: UIView!
    
    @IBOutlet var sliderColorRed: UISlider!
    @IBOutlet var sliderColorGreen: UISlider!
    @IBOutlet var sliderColorBlue: UISlider!
    
    @IBOutlet var labelRed: UILabel!
    @IBOutlet var labelGreen: UILabel!
    @IBOutlet var labelBlue: UILabel!
    
    var ValueR: CGFloat = 0
    var ValueG: CGFloat = 0
    var ValueB: CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        viewColor.layer.cornerRadius = 10
        
        
        //MARK: sliderColorRed
        sliderColorRed.minimumValue = 0
        sliderColorRed.maximumValue = 255
        
        //MARK: sliderColorGreen
        sliderColorGreen.minimumValue = 0
        sliderColorGreen.maximumValue = 255
        
        //MARK: sliderColorBlue
        sliderColorBlue.minimumValue = 0
        sliderColorBlue.maximumValue = 255
        
    }

    @IBAction func sliderRedAction(_ sender: Any) {
        labelRed.text = String(Int(sliderColorRed.value))
        ValueR = CGFloat(sliderColorRed.value)/255
        viewColor.backgroundColor = UIColor(red: ValueR, green: ValueG, blue: ValueB, alpha: 1)
    }
    
    @IBAction func sliderGreenAction(_ sender: Any) {
        labelGreen.text = String(Int(sliderColorGreen.value))
        ValueG = CGFloat(sliderColorGreen.value)/255
        viewColor.backgroundColor = UIColor(red: ValueR, green: ValueG, blue: ValueB, alpha: 1)
    }
    
    
    @IBAction func sliderBlueAction(_ sender: Any) {
        labelBlue.text = String(Int(sliderColorBlue.value))
        ValueB = CGFloat(sliderColorBlue.value)/255
        viewColor.backgroundColor = UIColor(red: ValueR, green: ValueG, blue: ValueB, alpha: 1)
    }
    
    
}

