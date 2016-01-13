import Foundation
import UIKit
import AVFoundation
import AudioToolbox
//import necessary kits/frameworks

class listPageViewController: UIViewController {
    

    
    var faves: [String]?
    
    @IBOutlet weak var fav1: UILabel!
    @IBOutlet weak var fav2: UILabel!
    @IBOutlet weak var fav3: UILabel!
    @IBOutlet weak var fav4: UILabel!
    @IBOutlet weak var fav5: UILabel!
    
    //links the 5 labels which will show the 5 chosen favourites
    
    @IBAction func reset(sender: AnyObject) {
        
        let defaults = NSUserDefaults.standardUserDefaults()
        var faves = defaults.valueForKey("faves") as? [String]
        
        if faves == nil {
            faves = [String]()
        }
        defaults.setValue(nil, forKey: "faves")
        
        
         fav1.text = nil
         fav2.text = nil
         fav3.text = nil
         fav4.text = nil
         fav5.text = nil
        
        
        
        
    }
    
    //reset button removes all variables from array in the favourites and clears them so they can be refilled with new favourites
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
     


    }
    
    func tableView(tableview: UITableView,numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func viewDidAppear(animated: Bool) {
        faves = NSUserDefaults.standardUserDefaults().valueForKey("faves") as? [String]
        
        
        if faves == nil {
            faves = [String]()
        }
        
        
        
        
            for fave in faves! {
            print(fave)
            
            if faves!.count > 0 {
                fav1.text = faves![0]
            }
            
            if faves!.count > 1 {
                fav2.text = faves![1]
            }
            
            if faves!.count > 2 {
                fav3.text = faves![2]
            }
            
            if faves!.count > 3 {
                fav4.text = faves![3]
            }
            
            if faves!.count > 4 {
                fav5.text = faves![4]
            }
            
        }
        
        //Displays the variable which the user has selected and it can be a single favourite or up to 5.
        

        
    }
    
    
    
}

