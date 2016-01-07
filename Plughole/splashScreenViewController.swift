import UIKit
import CoreLocation
import MapKit

class splashScreenViewController: UIViewController {
    
    
    
    let locationManager = CLLocationManager()

    let animals = filterAnimalsByLocation(.Invertebrates)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.requestWhenInUseAuthorization()
        
        
        for animal in animals {
            print(animal.name)
            
            //if let legs = animal.legs {
                //print(legs)}
            
        }
        
        
    }
    
    override func canBecomeFirstResponder() -> Bool {
        return true
    }
    
    
    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent?) {
        
        if CLLocationManager.authorizationStatus() == CLAuthorizationStatus.AuthorizedWhenInUse {
            if motion == .MotionShake {
                performSegueWithIdentifier("Enter", sender: self)
                print("shaken")
            }
        }
    }

    
    @IBAction func ShakeNotification(sender: AnyObject) {
        
        let AlertView = UIAlertController(title: "Start Exploring...", message: "Shake phone to enter", preferredStyle: UIAlertControllerStyle.Alert)
        
        self.presentViewController(AlertView, animated: true, completion: nil)
        
    }
    

}
