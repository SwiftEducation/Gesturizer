/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var gestureName: UILabel!
    @IBOutlet var singleTapRecognizer: UITapGestureRecognizer!
    @IBOutlet var doubleTapRecognizer: UITapGestureRecognizer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        singleTapRecognizer.require(toFail: doubleTapRecognizer)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override var canBecomeFirstResponder : Bool {
        return true
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            showGestureName("Shake")
        }
    }
    
    @IBAction func singleTap(_ sender: UITapGestureRecognizer) {
        showGestureName("Tap")
    }
    
    @IBAction func doubleTap(_ sender: UITapGestureRecognizer) {
        showGestureName("Double Tap")
    }
    
    func showGestureName(_ name: String) {
        gestureName.text = name
        UIView.animate(withDuration: 1.0,
            animations: { self.gestureName.alpha = 1.0 },
            completion: { _ in
                UIView.animate(withDuration: 1.0) { self.gestureName.alpha = 0 }
        })
    }
    
    @IBAction func pinch(_ sender: UIPinchGestureRecognizer) {
        if sender.state == .ended {
            showGestureName("Pinch")
        }
    }
    
    @IBAction func rotation(_ sender: UIRotationGestureRecognizer) {
        if sender.state == .ended {
            showGestureName("Rotation")
        }
    }
    
    @IBAction func swipe(_ sender: UISwipeGestureRecognizer) {
        if sender.direction == .right {
            showGestureName("Right Swipe")
        }
    }
    
}

