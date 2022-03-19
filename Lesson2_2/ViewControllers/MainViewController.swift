//
//  MainViewController.swift
//  Lesson2_2
//
//  Created by Pavel Metelin on 3/19/22.
//

import UIKit

protocol SettingsViewControllerDelegate {
    func setNewColor(for red: Float, green: Float, blue: Float)
}

class MainViewController: UIViewController {

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else { return }
        settingsVC.color = view.backgroundColor
        settingsVC.delegate = self
    }
}

//MARK: - SettingsViewControllerDelegate
extension MainViewController: SettingsViewControllerDelegate {
    func setNewColor(for red: Float, green: Float, blue: Float) {
        view.backgroundColor = UIColor(red: CGFloat(red),
                                       green: CGFloat(green),
                                       blue: CGFloat(blue),
                                       alpha: 1)
    }
}
