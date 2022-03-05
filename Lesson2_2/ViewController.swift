//
//  ViewController.swift
//  Lesson2_2
//
//  Created by Pavel Metelin on 3/3/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var viewColor: UIView!
    
    @IBOutlet var labelValues: [UILabel]!
    @IBOutlet var slidersRGB: [UISlider]!
        
    private var numberElement = 0
    
    private func refreshRGBView() {
        viewColor.backgroundColor = UIColor(red: CGFloat(slidersRGB[0].value),
                                            green: CGFloat(slidersRGB[1].value),
                                            blue: CGFloat(slidersRGB[2].value),
                                            alpha: 1)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewColor.layer.cornerRadius = 10
        
        for labelValue in labelValue {
            labelValue.text = String(format: "%.2f", slidersRGB[numberElement].value)
            numberElement += 1
        }
        refreshRGBViews()
    }

    @IBAction func sliderAction(_ sender: UISlider) {
        labelValues[sender.tag].text = String(format: "%.2f", sender.value)
        refreshRGBView()
    }

}

