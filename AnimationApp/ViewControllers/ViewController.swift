//
//  ViewController.swift
//  AnimationApp
//
//  Created by packovv on 10.01.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var animationView: UIView!
    @IBOutlet weak var runAnimationButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationView.layer.cornerRadius = 15
        runAnimationButton.layer.cornerRadius = 15
    }

    @IBAction func segmentControlAction(_ sender: UISegmentedControl) {
        
    }
    @IBAction func runAnimationButtonAction(_ sender: UIButton) {
        
    }
    
}

