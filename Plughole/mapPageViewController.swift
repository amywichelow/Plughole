enum Location: Int {
    case Fish = 1, Turtles, Invertebrates, Birds, OtherReptiles
}



import UIKit

class mapPageViewController: UIViewController {

    var userLocation = Location.Fish
    @IBOutlet weak var mapImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func updateView() {
        //ibeacon will trigger this to be called with some sort of number....
    
        switch userLocation {
        case .Fish:
            mapImage.image = UIImage(named: "mapfish")
        case .Turtles:
            mapImage.image = UIImage(named: "mapturtle")
        case .Invertebrates:
            mapImage.image = UIImage(named: "mapinverterbrates")
        case .Birds:
            mapImage.image = UIImage(named: "mapbird")
        case .OtherReptiles:
            mapImage.image = UIImage(named: "mapotherreptiles")
        }
        
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "AnimalDetail" {
            let vc = segue.destinationViewController as! animalDetailViewController
            vc.animalLocation = userLocation
        }
      
    
    }
}
