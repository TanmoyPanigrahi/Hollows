//
//  pageController.swift
//  Hollows
//
//  Created by Tanmoy Panigrahi on 7/22/19.
//  Copyright © 2019 Tanmoy Panigrahi. All rights reserved.
//

import UIKit

class pageController: UIViewController {
    @IBOutlet weak var storyTextView: UITextView!
    @IBOutlet weak var choice1: UIButton!
    @IBOutlet weak var choice2: UIButton!
    
    
    let story1 = "You wake up with amnesia"
    let lchoice1 = "Run!"
    let rchoice1 = "Hide"
    
    var storyIndex = 1
    
    
    @IBAction func onButtonPressed(_ sender: UIButton) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        choice1.setTitle("A", for: .normal)
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
