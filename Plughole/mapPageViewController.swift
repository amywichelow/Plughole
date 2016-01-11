enum Location: Int {
    case Fish = 1, Turtles, Invertebrates, Birds, OtherReptiles
}

import UIKit

class mapPageViewController: UIViewController {
    

    var userLocation: Location!
    @IBOutlet weak var mapImage: UIImageView!
    
    let beaconManager = ESTBeaconManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        beaconManager.delegate = self
        beaconManager.requestAlwaysAuthorization()
        
        beaconManager.startMonitoringForRegion(CLBeaconRegion(
            proximityUUID: NSUUID(UUIDString: "B9407F30-F5F8-466E-AFF9-25556B57FE6D")!,
            major: 4838, minor: 14161, identifier: "Fish"))
        
        beaconManager.startMonitoringForRegion(CLBeaconRegion(
            proximityUUID: NSUUID(UUIDString: "B9407F30-F5F8-466E-AFF9-25556B57FE6D")!,
            major: 22081, minor: 17109, identifier: "Invertebrates"))
        
        beaconManager.startMonitoringForRegion(CLBeaconRegion(
            proximityUUID: NSUUID(UUIDString: "B9407F30-F5F8-466E-AFF9-25556B57FE6D")!,
            major: 4023, minor: 59596, identifier: "OtherReptiles"))
        
        
    }
    
    func updateView(area: Location) {
        //ibeacon will trigger this to be called with some sort of number....
        
    
        switch userLocation! {
        case .Fish:
            mapImage.image = UIImage(named: "mapfish")
            userLocation = .Fish
        case .Turtles:
            mapImage.image = UIImage(named: "mapturtle")
            userLocation = .Turtles
        case .Invertebrates:
            mapImage.image = UIImage(named: "mapinverterbrates")
            userLocation = .Invertebrates
        case .Birds:
            mapImage.image = UIImage(named: "mapbird")
            userLocation = .Birds
        case .OtherReptiles:
            mapImage.image = UIImage(named: "mapotherreptiles")
            userLocation = .OtherReptiles
        }
        
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "AnimalDetail" {
            let vc = segue.destinationViewController as! animalDetailViewController
            vc.animalLocation = userLocation
        }
      
    }
    
    
}

extension mapPageViewController: ESTBeaconManagerDelegate {
    
    func beaconManager(manager: AnyObject, didEnterRegion region: CLBeaconRegion) {
        if region.identifier == "Fish" {
            updateView(.Fish)
        }
        if region.identifier == "Invertebrates" {
            updateView(.Invertebrates)
        }
        if region.identifier == "OtherReptiles" {
            updateView(.OtherReptiles)
        }
        if region.identifier == "Turtles" {
            updateView(.Turtles)
        }
        if region.identifier == "Birds" {
            updateView(.Birds)
        }
    }

}