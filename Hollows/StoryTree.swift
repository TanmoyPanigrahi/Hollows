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
    
    let lvl1 = Node(value: "First Chapter", lchoice: "Run", rchoice: "Sneak")
    
    
    let lvl2_1 = Node(value: "Second Chapter1", lchoice: "Run", rchoice: "Sneak")
    let lvl2_2 = Node(value: "Second Chapter2", lchoice: "Run", rchoice: "Sneak")
    
    let lvl3_1 = Node(value: "Third Chapter1", lchoice: "Run", rchoice: "Sneak")
    let lvl3_2 = Node(value: "Third Chapter2", lchoice: "Run", rchoice: "Sneak")
    let lvl3_3 = Node(value: "Third Chapter3", lchoice: "Run", rchoice: "Sneak")
    let lvl3_4 = Node(value: "Third Chapter4", lchoice: "Run", rchoice: "Sneak")
    
    let lvl4_1 = Node(value: "Dead Chapter1", lchoice: "Run", rchoice: "Sneak")
    let lvl4_2 = Node(value: "Fourth Chapter1", lchoice: "Run", rchoice: "Sneak")
    let lvl4_3 = Node(value: "Fourth Chapter2", lchoice: "Run", rchoice: "Sneak")
    let lvl4_4 = Node(value: "Fourth Chapter3", lchoice: "Run", rchoice: "Sneak")
    let lvl4_5 = Node(value: "Fourth Chapter4", lchoice: "Run", rchoice: "Sneak")
    let lvl4_6 = Node(value: "Fourth Chapter5", lchoice: "Run", rchoice: "Sneak")
    let lvl4_7 = Node(value: "Fourth Chapter6", lchoice: "Run", rchoice: "Sneak")
    let lvl4_8 = Node(value: "Dead Chapter2", lchoice: "Run", rchoice: "Sneak")
    
    let lvl5_1 = Node(value: "Dead Chapter 3", lchoice: "Run", rchoice: "Sneak")
    let lvl5_2 = Node(value: "Fifth Chapter1", lchoice: "Run", rchoice: "Sneak")
    let lvl5_3 = Node(value: "Fifth Chapter2", lchoice: "Run", rchoice: "Sneak")
    let lvl5_4 = Node(value: "Dead Chapter 4", lchoice: "Run", rchoice: "Sneak")
    let lvl5_5 = Node(value: "Fifth Chapter3", lchoice: "Run", rchoice: "Sneak")
    let lvl5_6 = Node(value: "Dead Chapter 5", lchoice: "Run", rchoice: "Sneak")
    let lvl5_7 = Node(value: "Fifth Chapter4", lchoice: "Run", rchoice: "Sneak")
    let lvl5_8 = Node(value: "Dead Chapter 6", lchoice: "Run", rchoice: "Sneak")
    let lvl5_9 = Node(value: "Dead Chapter 7", lchoice: "Run", rchoice: "Sneak")
    let lvl5_10 = Node(value: "Fifth Chapter5", lchoice: "Run", rchoice: "Sneak")
    let lvl5_11 = Node(value: "Dead Chapter 8", lchoice: "Run", rchoice: "Sneak")
    let lvl5_12 = Node(value: "Fifth Chapter6", lchoice: "Run", rchoice: "Sneak")
    
    let lvl6_1 = Node(value: "Dead Chapter 9", lchoice: "Run", rchoice: "Sneak")
    let lvl6_2 = Node(value: "Sixth Chapter1", lchoice: "Run", rchoice: "Sneak")
    let lvl6_3 = Node(value: "Sixth Chapter2", lchoice: "Run", rchoice: "Sneak")
    let lvl6_4 = Node(value: "Sixth Chapter3", lchoice: "Run", rchoice: "Sneak")
    let lvl6_5 = Node(value: "Dead Chapter 10", lchoice: "Run", rchoice: "Sneak")
    
    let lvl7_1 = Node(value: "Dead Chapter 11", lchoice: "Run", rchoice: "Sneak")
    let lvl7_2 = Node(value: "Seventh Chapter1", lchoice: "Run", rchoice: "Sneak")
    let lvl7_3 = Node(value: "Seventh Chapter2", lchoice: "Run", rchoice: "Sneak")
    let lvl7_4 = Node(value: "Dead Chapter 12", lchoice: "Run", rchoice: "Sneak")
    
    let lvl8_1 = Node(value: "Dead Chapter 13", lchoice: "Run", rchoice: "Sneak")
    let lvl8_2 = Node(value: "Eighth Chapter1", lchoice: "Run", rchoice: "Sneak")
    let lvl8_3 = Node(value: "Dead Chapter 14", lchoice: "Run", rchoice: "Sneak")
    
    
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
        lvl3_2.add(child: lvl4_3)
        lvl3_2.add(child: lvl4_4)
        lvl3_3.add(child: lvl4_5)
        lvl3_3.add(child: lvl4_6)
        lvl3_4.add(child: lvl4_7)
        lvl3_4.add(child: lvl4_8)
        
      
        lvl4_2.add(child: lvl5_1)
        lvl4_2.add(child: lvl5_2)
        lvl4_3.add(child: lvl5_3)
        lvl4_3.add(child: lvl5_4)
        lvl4_4.add(child: lvl5_5)
        lvl4_4.add(child: lvl5_6)
        lvl4_5.add(child: lvl5_7)
        lvl4_5.add(child: lvl5_8)
        lvl4_6.add(child: lvl5_9)
        lvl4_6.add(child: lvl5_10)
        lvl4_7.add(child: lvl5_11)
        lvl4_7.add(child: lvl5_12)
        
        lvl5_2.add(child: lvl6_1)
        lvl5_2.add(child: lvl6_2)
        lvl5_3.add(child: lvl6_2)
        lvl5_3.add(child: lvl6_3)
        lvl5_5.add(child: lvl6_2)
        lvl5_5.add(child: lvl6_3)
        lvl5_7.add(child: lvl6_3)
        lvl5_7.add(child: lvl6_4)
        lvl5_10.add(child: lvl6_3)
        lvl5_10.add(child: lvl6_4)
        lvl5_12.add(child: lvl6_4)
        lvl5_12.add(child: lvl6_5)
        
        lvl6_2.add(child: lvl7_1)
        lvl6_2.add(child: lvl7_2)
        lvl6_3.add(child: lvl7_2)
        lvl6_3.add(child: lvl7_3)
        lvl6_4.add(child: lvl7_3)
        lvl6_4.add(child: lvl7_4)
        
        lvl7_2.add(child: lvl8_1)
        lvl7_2.add(child: lvl8_2)
        lvl7_3.add(child: lvl8_2)
        lvl7_3.add(child: lvl8_3)
        
        
        
        
        
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
