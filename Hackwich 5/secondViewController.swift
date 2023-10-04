//
//  secondViewController.swift
//  Hackwich 5
//
//  Created by Cassie Kauhane on 10/3/23.
//

import UIKit

class secondViewController: UIViewController {
    
    @IBOutlet weak var topLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        topLabel.text = "My Favorite Food Shows"
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    @IBOutlet weak var bottomLabel: UILabel!
    
    
    @IBAction func buttonPressed(_ sender: Any) {
       //comment 1 create text of 3rd index or bottom label
        bottomLabel.text = (favoriteShows[3])
       
       
       //comment 2 create if statement to iterate through array
        if (currentIndex > favoriteShows.count )
            {
                
                
                //comment 3 set the state of the button to normal
                buttonLabel.setTitle("Next",for: UIControl.State.normal)
             
            //comment 4 increase currentindex by 1
            currentIndex+=1
            }
          //comment 5 create else statement
            else
            {
                print("button has been disabled")
                (buttonLabel!).isEnabled=false

            }
            
        
        
    }
    
    @IBOutlet weak var buttonLabel: UIButton!
    
       
    
        
    
    var currentIndex = 3
    var favoriteShows: [String] = ["New Girl", "The Neighborhood", "Friends", "Gossip Girl", "One Tree Hill"]
    
    
    
   
        
    
}
