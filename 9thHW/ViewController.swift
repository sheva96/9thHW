//
//  ViewController.swift
//  9thHW
//
//  Created by Евгений Шевченко on 11.11.2020.
//

import Spring

class ViewController: UIViewController {

    @IBOutlet weak var animationView: SpringView!
    @IBOutlet var parametersLabels: [UILabel]!
    
    private var animations = Animation.getAnimations()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        parametersLabels.forEach { label in
            switch label.tag {
            case 0: label.text = ""
            case 1: label.text = ""
            case 3: label.text = ""
            case 4: label.text = ""
            default: break
            }
        }
    }

    @IBAction func runAnimation(_ sender: SpringButton) {
        setParameters(animationView)
        showParameters(parametersLabels)
        
        let index = animations.index(after: 0)
        sender.setTitle(animations[index].preset, for: .normal)
        
        let animation = animations.remove(at: 0)
        animations.append(animation)
    }
    
    private func setParameters(_ sender: SpringView) {
        sender.animation = animations.first?.preset ?? ""
        sender.curve = animations.first?.curve ?? ""
        sender.force = CGFloat(animations.first?.force ?? 0)
        sender.duration = CGFloat(animations.first?.duration ?? 0)
        sender.delay = CGFloat(animations.first?.delay ?? 0)
        sender.animate()
    }
    
    private func showParameters(_ labels: [UILabel]) {
        labels.forEach { label in
            switch label.tag {
            case 0: label.text = "Preset: \(animations.first?.preset ?? "")"
            case 1: label.text = "Curve: \(animations.first?.curve ?? "")"
            case 2: label.text = "Force: \(animations.first?.force ?? 0)"
            case 3: label.text = "Duration: \(animations.first?.duration ?? 0)"
            case 4: label.text = "Delay: \(animations.first?.delay ?? 0)"
            default: break
            }
        }
    }
}
