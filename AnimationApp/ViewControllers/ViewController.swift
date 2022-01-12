//
//  ViewController.swift
//  AnimationApp
//
//  Created by packovv on 10.01.2022.
//

import UIKit

class ViewController: UIViewController {

    let animeValues = AnimeValue.getAnimeValue()
    
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var animationView: UIView!
    @IBOutlet weak var animationLabel: UILabel!
    @IBOutlet weak var runAnimationButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationView.layer.cornerRadius = 15
        runAnimationButton.layer.cornerRadius = 15
    }

    @IBAction func segmentControlAction(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            let animeValue = animeValues[0]
            animationLabel.text = animeValue.viewLabel
            runAnimationButton.setTitle(animeValue.buttonTitle,
                                        for: .normal)
        case 1:
            let animeValue = animeValues[1]
            animationLabel.text = animeValue.viewLabel
            runAnimationButton.setTitle(animeValue.buttonTitle,
                                        for: .normal)
        default:
            print("ERROR: No one segment index were selected")
        }
    }
    @IBAction func runAnimationButtonAction(_ sender: UIButton) {
        switch segmentControl.selectedSegmentIndex {
        case 0:
            print("Core Animation")
            
        case 1:
            print("Spring Animation")
            
        default:
            print("ERROR: No one segment index were selected")
        }
    }
    
}

