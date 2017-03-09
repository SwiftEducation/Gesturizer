/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var gestureName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func singleTap(_ sender: UITapGestureRecognizer) {
        showGestureName("Tap")
    }
    
    @IBAction func doubleTap(_ sender: UITapGestureRecognizer) {
        showGestureName("Double Tap")
    }
    
    func showGestureName(_ name: String) {
        gestureName.text = name
        UIView.animate(withDuration: 1.0) { self.gestureName.alpha = 1.0 }
    }
    
}

