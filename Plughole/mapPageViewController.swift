enum Location: Int {
    case Fish = 1, Turtles, Invertebrates, Birds, OtherReptiles
}



import UIKit

class mapPageViewController: UIViewController {

    var userLocation = Location.Invertebrates
    @IBOutlet weak var mapImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func updateView() {
        //ibeacon will trigger this to be called with some sort of number....
    
        switch userLocation {
        case .Fish:
            mapImage.image = UIImage(named: "")
        case .Turtles:
            mapImage.image = UIImage(named: "")
        case .Invertebrates:
            mapImage.image = UIImage(named: "")
        case .Birds:
            mapImage.image = UIImage(named: "")
        case .OtherReptiles:
            mapImage.image = UIImage(named: "")
        }
        
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "AnimalDetail" {
            let vc = segue.destinationViewController as! animalDetailViewController
            vc.animalLocation = userLocation
        }
        
        
    }
    
    
}
 