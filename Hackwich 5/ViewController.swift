//
//  ViewController.swift
//  Hackwich 5
//
//  Created by Cassie Kauhane on 10/3/23.
//

import UIKit

class ViewController: UIViewController {
    
    //comment 1 create IBOutlet for top label
    @IBOutlet weak var topLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
        topLabel.text = "My Favorite Foods"
    }
    
    @IBOutlet weak var bottomLabel: UILabel!
    
   
    @IBAction func buttonPressed(_ sender: Any) {
        //comment 1 create bottom label text to first index item
        bottomLabel.text = (favoriteFoodsArray[0])
        
        //comment 2 create if statement for count
        if(currentIndex > favoriteFoodsArray.count)
        {
            //comment 3 set next button to normal
            buttonLabel.setTitle("Next",for: UIControl.State.normal)
            
            //comment 4 raise index by 1
            currentIndex+=1
        }
        //comment 5 create else statement for button has been disabled
        else
        { print("button has been disabled")
            (buttonLabel!).isEnabled=false
        }
    }
       
    var currentIndex = 0
   
    var favoriteFoodsArray: [String] = ["Sushi", "Pasta", "Ice Cream", "Pork Squash", "Lau Lau"]
    
    
    
    
    @IBOutlet weak var buttonLabel: UIButton!
}

