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
    private var counter: Int = 0
    
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
        let springAnimationNumber = springAnimations.count - 1
        
        runSpringAnimationButton.layer.removeAllAnimations()
        springAnimate()
        setCounter(N: springAnimationNumber)
        springSetTitle()
        springView.animate()
    }
    
    private func springAnimate() {
        let animationValue = springAnimations[counter]
        springView.animation = animationValue.animation
        springView.curve = animationValue.curve
        springView.force = animationValue.force
        springView.duration = animationValue.duration
        springView.delay = animationValue.delay
        springLabel.text =  """
                                animation: \(animationValue.animation)
                                curve: \(animationValue.curve)
                                force: \(animationValue.force)
                                duracion: \(animationValue.duration)
                                delay: \(animationValue.delay)
                            """
        print("anime \(counter)")
    }
    private func springSetTitle() {
        let buttonTitle = springAnimations[counter]
        runSpringAnimationButton.setTitle("Next is \(buttonTitle.animation)", for: .normal)
    }
    private func setCounter(N: Int) {
        if counter >= N {
            counter = 0
        } else {
            counter += 1
        }
    }
}

