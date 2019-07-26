//
//  StoryTree.swift
//  Hollows
//
//  Created by Tanmoy Panigrahi on 7/23/19.
//  Copyright © 2019 Tanmoy Panigrahi. All rights reserved.
//

import Foundation
import UIKit


class StoryTree : pageController {
    
    lazy var curr = lvl1
    
    let lvl1 = Node(value: "First Chapter", lchoice: "Run", rchoice: "Sneak")
    
    
    let lvl2_1 = Node(value: "Second Chapter", lchoice: "Run", rchoice: "Sneak")
    let lvl2_2 = Node(value: "Second Chapter", lchoice: "Run", rchoice: "Sneak")
    
    let lvl3_1 = Node(value: "Third Chapter", lchoice: "Run", rchoice: "Sneak")
    let lvl3_2 = Node(value: "Third Chapter", lchoice: "Run", rchoice: "Sneak")
    let lvl3_3 = Node(value: "Third Chapter", lchoice: "Run", rchoice: "Sneak")
    let lvl3_4 = Node(value: "Third Chapter", lchoice: "Run", rchoice: "Sneak")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        traversal(node: curr)
        
        lvl1.add(child: lvl2_1)
        lvl1.add(child: lvl2_2)
        
        lvl2_1.add(child: lvl3_1)
        lvl2_1.add(child: lvl3_2)
        lvl2_2.add(child: lvl3_3)
        lvl2_2.add(child: lvl3_4)
    }
    
    override func onButtonPressed(_ sender: UIButton) {
        if sender.tag == 1 {
            
        } else if sender.tag == 2 {
            //curr = curr.child2
        }
    }
    
    func traversal(node: Node?) {
        if node != nil {
            storyTextView.text = node?.value
            choice1.setTitle(node?.lchoice, for: .normal)
            choice2.setTitle(node?.rchoice, for: .normal)
            
        } else {
            storyTextView.text = "You died"
            choice1.isHidden = true
            choice2.isHidden = true
        }
    }
}
