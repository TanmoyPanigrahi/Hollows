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
    lazy var chapterEnd = false
    
    let lvl1 = Node(value: "You open the door and reach a hallway. You hear footsteps, stomping towards you from your right. \"That’s the Earthlings. They must have figured out that we have escaped. We have to find a way out, and quickly. I could have taken them all out but I do not have my blaster on me. We could risk sneaking past them, but I am not sure if you have had your powers come back to you yet.\" Just as Deus finished speaking, I noticed a vent on the left side of the hallway. It was large enough to fit the both of us but we had no clue about where it would lead us to. I had to make a choice. What was it going to be? Trying to sneak past the Earthlings or go through the vent?", lchoice: "Vent", rchoice: "Sneak")
    
    
    let lvl2_1 = Node(value: "Second Chapter1", lchoice: "Ru", rchoice: "Snak")
    let lvl2_2 = Node(value: "Second Chapter2", lchoice: "Rn", rchoice: "Snek")
    
    let lvl3_1 = Node(value: "Third Chapter1", lchoice: "Run", rchoice: "Sneak")
    let lvl3_2 = Node(value: "Dead Chapter 1", lchoice: "Run", rchoice: "Sneak")
    let lvl3_3 = Node(value: "Dead Chpater 2", lchoice: "Run", rchoice: "Sneak")
    let lvl3_4 = Node(value: "Third Chapter2", lchoice: "Run", rchoice: "Sneak")
    
    let lvl4_1 = Node(value: "Dead Chapter3", lchoice: "Run", rchoice: "Sneak")
    let lvl4_2 = Node(value: "Fourth Chapter1", lchoice: "Run", rchoice: "Sneak")
    let lvl4_3 = Node(value: "Fourth Chapter2", lchoice: "Run", rchoice: "Sneak")
    let lvl4_4 = Node(value: "Dead Chapter4", lchoice: "Run", rchoice: "Sneak")
    
    let lvl5_1 = Node(value: "Dead Chapter 1", lchoice: "Run", rchoice: "Sneak")
    let lvl5_2 = Node(value: "Fifth Chapter1", lchoice: "Run", rchoice: "Sneak")
    let lvl5_3 = Node(value: "Dead Chapter6", lchoice: "Run", rchoice: "Sneak")
    let lvl5_4 = Node(value: "Fifth Chapter2", lchoice: "Run", rchoice: "Sneak")
    
    
    let lvl6_1 = Node(value: "Dead Chapter 7", lchoice: "Run", rchoice: "Sneak")
    let lvl6_2 = Node(value: "Sixth Chapter1", lchoice: "Run", rchoice: "Sneak")
    let lvl6_3 = Node(value: "Sixth Chapter2", lchoice: "Run", rchoice: "Sneak")
    let lvl6_4 = Node(value: "Sixth Chapter3", lchoice: "Run", rchoice: "Sneak")
    let lvl6_5 = Node(value: "Dead Chapter 8", lchoice: "Run", rchoice: "Sneak")
    
    let lvl7_1 = Node(value: "Dead Chapter 11", lchoice: "Run", rchoice: "Sneak")
    let lvl7_2 = Node(value: "Seventh Chapter1", lchoice: "Run", rchoice: "Sneak")
    let lvl7_3 = Node(value: "Dead Chapter 12", lchoice: "Run", rchoice: "Sneak")
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lvl1.add(child: lvl2_1)
        lvl1.add(child: lvl2_2)
        
        lvl2_1.add(child: lvl3_1)
        lvl2_1.add(child: lvl3_2)
        lvl2_2.add(child: lvl3_3)
        lvl2_2.add(child: lvl3_4)
        
        lvl3_1.add(child: lvl4_1)
        lvl3_1.add(child: lvl4_2)
        lvl3_4.add(child: lvl4_3)
        lvl3_4.add(child: lvl4_4)

        lvl4_2.add(child: lvl5_1)
        lvl4_2.add(child: lvl5_2)
        lvl4_3.add(child: lvl5_3)
        lvl4_3.add(child: lvl5_4)
        
        lvl5_2.add(child: lvl6_1)
        lvl5_2.add(child: lvl6_2)
        lvl5_4.add(child: lvl6_2)
        lvl5_4.add(child: lvl6_3)
        
        lvl6_2.add(child: lvl7_1)
        lvl6_2.add(child: lvl7_1)
        lvl6_3.add(child: lvl7_1)
        lvl6_3.add(child: lvl7_1)
        
        traversal(node: curr)
    }
    
    override func onButtonPressed(_ sender: UIButton) {
        if sender.tag == 1 {
            if (curr.children.isEmpty != true) {
                curr = curr.children[0]
                traversal(node: curr)
            }
            
        } else if sender.tag == 2 {
            if (curr.children.isEmpty != true) {
                curr = curr.children[1]
                traversal(node: curr)
            }
        }
    }
    
    func traversal(node: Node?) {
        if node != nil {
            storyTextView.text = node?.value
            choice1.setTitle(node?.lchoice, for: .normal)
            choice2.setTitle(node?.rchoice, for: .normal)
            if node?.children.isEmpty == true {
                choice1.isHidden = true
                choice2.isHidden = true
            }
        } else {
            storyTextView.text = "You died"
            choice1.isHidden = true
            choice2.isHidden = true
        }
    }
}
