//
//  StoryTree.swift
//  Hollows
//
//  Created by Tanmoy Panigrahi on 7/23/19.
//  Copyright © 2019 Tanmoy Panigrahi. All rights reserved.
//

import Foundation


class StoryTree : pageController {
    let lvl1 = Node(value: "First Chapter", lchoice: "Run", rchoice: "Sneak")
    
    let lvl2_1 = Node(value: "Second Chapter", lchoice: "Run", rchoice: "Sneak")
    let lvl2_2 = Node(value: "Second Chapter", lchoice: "Run", rchoice: "Sneak")
    
    let lvl3_1 = Node(value: "Third Chapter", lchoice: "Run", rchoice: "Sneak")
    let lvl3_2 = Node(value: "Third Chapter", lchoice: "Run", rchoice: "Sneak")
    let lvl3_3 = Node(value: "Third Chapter", lchoice: "Run", rchoice: "Sneak")
    let lvl3_4 = Node(value: "Third Chapter", lchoice: "Run", rchoice: "Sneak")
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyTextView.text = lvl1.value
        choice1.setTitle(lvl1.lchoice, for: .normal)
        choice2.setTitle(lvl1.rchoice, for: .normal)
        
        lvl1.add(child: lvl2_1)
        lvl1.add(child: lvl2_2)
        
        lvl2_1.add(child: lvl3_1)
        lvl2_1.add(child: lvl3_2)
        lvl2_2.add(child: lvl3_3)
        lvl2_2.add(child: lvl3_4)
    }
    
}
