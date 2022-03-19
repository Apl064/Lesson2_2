//
//  SettingsViewController.swift
//  Lesson2_2
//
//  Created by Pavel Metelin on 3/3/22.
//

import UIKit

class SettingsViewController: UIViewController, UITextFieldDelegate {
    
    //MARK: - IB Outlets
    @IBOutlet var viewColor: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var redTextField: UITextField!
    @IBOutlet var greenTextField: UITextField!
    @IBOutlet var blueTextField: UITextField!
    
    //MARK: - Properties
    var color: UIColor!
    var delegate: SettingsViewControllerDelegate!
    
    //MARK: - Private Properties
    private var red: CGFloat = 0
    private var green: CGFloat = 0
    private var blue: CGFloat = 0
    private var alpha: CGFloat = 0
    
    //MARK: - Override Method
    override func viewDidLoad() {
        super.viewDidLoad()

        viewColor.layer.cornerRadius = 10
        viewColor.backgroundColor = color

        setSlider()
        setValue(for: redLabel, greenLabel, blueLabel)
    }

    //MARK: - IB Action
    @IBAction func rgbSlider(_ sender: UISlider) {
        setColor()

        switch sender {
        case redSlider:
            redLabel.text = string(from: redSlider)
            redTextField.text = string(from: redSlider)
        case greenSlider:
            greenLabel.text = string(from: greenSlider)
            greenTextField.text = string(from: greenSlider)
        default:
            blueLabel.text = string(from: blueSlider)
            blueTextField.text = string(from: blueSlider)
        }
    }
    
    @IBAction func doneButtonPressed() {
        delegate.setNewColor(for: redSlider.value,
                                 green: greenSlider.value,
                                 blue: blueSlider.value)
        dismiss(animated: true)
    }
    
    //MARK: - Private Method
    private func setColor() {
        viewColor.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
    private func setValue(for labels: UILabel...) {
        labels.forEach { label in
            switch label {
            case redLabel:
                redLabel.text = string(from: redSlider)
                redTextField.text = string(from: redSlider)
            case greenLabel:
                greenLabel.text = string(from: greenSlider)
                greenTextField.text = string(from: greenSlider)
            default:
                blueLabel.text = string(from: blueSlider)
                blueTextField.text = string(from: blueSlider)
            }
        }
    }
    
    private func setSlider() {
        guard let getColor = viewColor.backgroundColor else { return }
        if getColor.getRed(&red, green: &green, blue: &blue, alpha: &alpha) {
            redSlider.value = Float(red)
            greenSlider.value = Float(green)
            blueSlider.value = Float(blue)
        }
    }
    
    private func string(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
}

// MARK: - Keyboard
extension SettingsViewController {
    
}
