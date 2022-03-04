//
//  ViewController.swift
//  Lesson2_2
//
//  Created by Pavel Metelin on 3/3/22.
//

//Сделайте экран в котором можно менять цвет фона у вью, при помощи слайдеров.
//Значение каждого слайдера должно отображаться в соответствующем лейбле.
//Цвет слайдера слева от бегунка должен соответствовать тому цвету,
//за который он отвечает.

import UIKit

enum Color {
     case red
     case green
     case blue
}

class ViewController: UIViewController {

    @IBOutlet var viewColor: UIView!
    @IBOutlet var labelRedValue: UILabel!
    @IBOutlet var labelGreenValue: UILabel!
    @IBOutlet var sliderRed: UISlider!
    @IBOutlet var sliderGreen: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewColor.layer.cornerRadius = 10
        
        .red = Float(round(sliderRed.value * 100) / 100)
        .green = Float(round(sliderGreen.value * 100) / 100)
 
        
        labelRedValue.text = String(.red)
        labelGreenValue.text = String(.green)
        
    }

    @IBAction func sliderRedAction() {
        .red = Float(round(sliderRed.value * 100) / 100)
        labelRedValue.text = String(.red)
        
        viewColor.backgroundColor = UIColor(red: CGFloat(.red), green: CGFloat(.green), blue: 255 / 255, alpha: 1)
    }
    
    @IBAction func sliderGreenValue() {
        .green = Float(round(sliderGreen.value * 100) / 100)
        labelGreenValue.text = String(.green)
        
        viewColor.backgroundColor = UIColor(red: CGFloat(.red), green: CGFloat(.green), blue: 255 / 255, alpha: 1)
    }
    
    

}

