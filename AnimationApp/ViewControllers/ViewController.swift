//
//  ViewController.swift
//  AnimationApp
//
//  Created by packovv on 10.01.2022.
//

import Spring

class ViewController: UIViewController {
    
    let springAnimations = SpringAnimation.getSpringAnimation()
    
    
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var animationView: UIView!
    @IBOutlet weak var springView: SpringView!
    @IBOutlet weak var animationLabel: UILabel!
    @IBOutlet weak var springLabel: UILabel!
    @IBOutlet weak var runAnimationButton: UIButton!
    @IBOutlet weak var runSpringAnimationButton: SpringButton!
    
    private var animationStarted = false
    private var springStarted = false
    private var counter: Int8 = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationView.layer.cornerRadius = 15
        springView.layer.cornerRadius = 15
        runAnimationButton.layer.cornerRadius = 15
        runSpringAnimationButton.layer.cornerRadius = 15
        
        springView.isHidden = true
        runSpringAnimationButton.isHidden = true
    }

    @IBAction func segmentControlAction(_ sender: UISegmentedControl) {
        animationView.layer.removeAllAnimations()
        runAnimationButton.layer.removeAllAnimations()
        springView.layer.removeAllAnimations()
        runSpringAnimationButton.layer.removeAllAnimations()
        
        counter = 0
        
        switch sender.selectedSegmentIndex {
        case 0:
            animationView.isHidden = false
            springView.isHidden = true
            
            runAnimationButton.isHidden = false
            runSpringAnimationButton.isHidden = true
            
        case 1:
            animationView.isHidden = true
            springView.isHidden = false
            
            runAnimationButton.isHidden = true
            runSpringAnimationButton.isHidden = false
            
        default:
            print("ERROR: No one segment index were selected")
        }
    }
    @IBAction func runAnimationButtonAction(_ sender: UIButton) {
        UIView.animate(withDuration: 0.5,
                        delay: 0,
                        options: [.autoreverse, .repeat],
                        animations: {
                            if !self.animationStarted {
                                self.animationView.frame.origin.x -= 10
                                self.animationStarted.toggle()
                            }
                        })
        
        sender.pulsate()
    }
    @IBAction func runSpringAnimationButtonAction(_ sender: SpringButton) {
        runSpringAnimationButton.layer.removeAllAnimations()
        
        var springAnimation: SpringAnimation
        var springButtonTitle: SpringAnimation
        
        switch counter {
        case 0:
            springAnimation = springAnimations[0]
            springView.animation = springAnimation.animation
            springView.curve = springAnimation.curve
            springView.force = springAnimation.force
            springView.duration = springAnimation.duration
            springView.delay = springAnimation.delay
            springLabel.text =  """
                                    animation: \(springAnimation.animation)
                                    curve: \(springAnimation.curve)
                                    force: \(springAnimation.force)
                                    duracion: \(springAnimation.duration)
                                    delay: \(springAnimation.delay)
                                """
            print("anime 0")
        case 1:
            springAnimation = springAnimations[1]
            springView.animation = springAnimation.animation
            springView.curve = springAnimation.curve
            springView.force = springAnimation.force
            springView.duration = springAnimation.duration
            springView.delay = springAnimation.delay
            springLabel.text =  """
                                    animation: \(springAnimation.animation)
                                    curve: \(springAnimation.curve)
                                    force: \(springAnimation.force)
                                    duracion: \(springAnimation.duration)
                                    delay: \(springAnimation.delay)
                                """
            print("anime 1")
        case 2:
            springAnimation = springAnimations[2]
            springView.animation = springAnimation.animation
            springView.curve = springAnimation.curve
            springView.force = springAnimation.force
            springView.duration = springAnimation.duration
            springView.delay = springAnimation.delay
            springLabel.text =  """
                                    animation: \(springAnimation.animation)
                                    curve: \(springAnimation.curve)
                                    force: \(springAnimation.force)
                                    duracion: \(springAnimation.duration)
                                    delay: \(springAnimation.delay)
                                """
            print("anime 2")
        case 3:
            springAnimation = springAnimations[3]
            springView.animation = springAnimation.animation
            springView.curve = springAnimation.curve
            springView.force = springAnimation.force
            springView.duration = springAnimation.duration
            springView.delay = springAnimation.delay
            springLabel.text =  """
                                    animation: \(springAnimation.animation)
                                    curve: \(springAnimation.curve)
                                    force: \(springAnimation.force)
                                    duracion: \(springAnimation.duration)
                                    delay: \(springAnimation.delay)
                                """
            print("anime 3")
        default:
            print("ERROR: switch 1 doesn't work correct")
        }
        
        switch counter {
        case 0:
            springButtonTitle = springAnimations[1]
            runSpringAnimationButton.setTitle("Next is \(springButtonTitle.animation)", for: .normal)
        case 1:
            springButtonTitle = springAnimations[2]
            runSpringAnimationButton.setTitle("Next is \(springButtonTitle.animation)", for: .normal)
        case 2:
            springButtonTitle = springAnimations[3]
            runSpringAnimationButton.setTitle("Next is \(springButtonTitle.animation)", for: .normal)
        case 3:
            springButtonTitle = springAnimations[0]
            runSpringAnimationButton.setTitle("Next is \(springButtonTitle.animation)", for: .normal)
        default:
            print("ERROR: switch 2 doesn't work correct")
        }
        
        if counter >= 3 {
            counter = 0
        } else {
            counter += 1
        }
        
        springView.animate()
    }
}

