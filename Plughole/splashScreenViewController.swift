import UIKit
import CoreLocation
import MapKit

class splashScreenViewController: UIViewController {
    
   

    let animals = filterAnimalsByLocation(.Invertebrates)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        for animal in animals {
            print(animal.name)
            
        
            
        }
        
        
    }
    
    override func canBecomeFirstResponder() -> Bool {
        return true
    }
    
    
    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent?) {
        
        
        if motion == .MotionShake {
            performSegueWithIdentifier("Enter", sender: self)
            print("shaken")
        }
        
        
    }

    
    @IBAction func ShakeNotification(sender: AnyObject) {
        
        let AlertView = UIAlertController(title: "Start Exploring...", message: "Shake phone to enter", preferredStyle: UIAlertControllerStyle.Alert)
        
        self.presentViewController(AlertView, animated: true, completion: nil)
        
    }
    

}
