import Foundation
import UIKit
//import necessary kits/frameworks

class listPageViewController: UIViewController {
    
    var faves: [String]?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    
    override func viewDidAppear(animated: Bool) {
        faves = NSUserDefaults.standardUserDefaults().valueForKey("faves") as? [String]
        
        if faves == nil {
            faves = [String]()
        }
        
        for fave in faves! {
            print(fave)
        }
        
//        lab.text = fave[0]
        
    }
    
    
    
}