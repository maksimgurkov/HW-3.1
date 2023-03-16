//
//  ViewController.swift
//  HW 3.1
//
//  Created by Максим Гурков on 16.03.2023.
//
import UIKit
import SpringAnimation

final class ViewController: UIViewController {
    
    // MARK: - IBOutlet
    
    @IBOutlet weak var animationView: SpringView! {
        didSet {
            animationView.layer.cornerRadius = 10
        }
    }
    
    @IBOutlet weak var animationButton: UIButton! {
        didSet {
            animationButton.layer.cornerRadius = 10
            animationButton.setTitle("Start animation", for: .normal)
        }
    }
    
    @IBOutlet weak var nameAnimationLabel: UILabel!
    @IBOutlet weak var nameCurveLabel: UILabel!
    @IBOutlet weak var forceValueLabel: UILabel!
    @IBOutlet weak var durationValueLabel: UILabel!
    @IBOutlet weak var delayValueLabel: UILabel!
    
    // MARK: - Private properties
    
    private var animations = Animation.animation
    
    // MARK: - Override functions
    override func viewDidLoad() {
        super.viewDidLoad()
       title = "Animation"
    }
    
    // MARK: - IBAction
    
    @IBAction func actionAnimationButton() {
        getAnimation()
    }
    
}

// MARK: - Extension

private extension ViewController {
    
    func getAnimation() {
        
        let name = animations.animation
        
        animationView.animation = animations.animation
        animationView.curve = animations.curve
        animationView.force = animations.force
        animationView.duration = animations.duration
        animationView.delay = animations.delay
        animationView.animate()
        
        animationButton.setTitle("Name - \(name)", for: .normal)
        
        nameAnimationLabel.text = "Name: \(name)"
        nameCurveLabel.text = "Curve: \(animations.curve)"
        forceValueLabel.text = "Force: \(animations.force)"
        durationValueLabel.text = "Duration: \(animations.duration)"
        delayValueLabel.text = "Delay: \(animations.delay)"
        
        animations = Animation.animation
        
        animationButton.setTitle( "Next animation -> \(animations.animation)", for: .normal)
        
    }
    
}

