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
    
    let lvl1 = Node(value: "You open the door and reach a hallway. You hear footsteps, stomping towards you from your right. \"That’s the Earthlings. They must have figured out that we have escaped. We have to find a way out, and quickly. I could have taken them all out but I do not have my blaster on me. We could risk sneaking past them, but I am not sure if you have had your powers come back to you yet.\" Just as Deus finishes speaking, you notice a vent on the left side of the hallway. It was large enough to fit the both of you but you have no clue about where it would lead you to. You have to make a choice. What is it going to be? Trying to sneak past the Earthlings or go through the vent?", lchoice: "Vent", rchoice: "Sneak")
    
    
    let lvl2_1 = Node(value: " \"Deus, trying to go past them is too risky. Let us try to see what’s past the vent instead. \" You use a boost from Deus to open and get into the vent and pull him up. Just as you do, silence softly surges upwards. You just make it in time, but Deus forgets to close the vent on his way up. Just as you and Deus reach the other end of the vent you hear a grunty voice yell out - \"They must have gone into the vents.  Quick! Half of you, follow Dave into towards the Red Room! DO NOT LET THEM ESCAPE!\" You jump down the vent into a room with nauseating red lights and Deus follows suit. There is a whole showcase of gadgets in shelves that filled the room. You have to choose between focusing on gearing up or finding a way out.", lchoice: "Gear Up", rchoice: "Escape")
    
    let lvl2_2 = Node(value: " \"There is a hatch up front, but it is too big of a gamble since we do not know where it leads to. Let us look for a place to hide from the Earthlings.\" You look around. Scanning through the hallway and the room you just got out of. You note that the room you just got out of is pretty hard to see in but no objects to take cover behind and only one escape route. On the other hand, although obvious hiding spots, there are a lot of open lockers that you could shut yourself in. You have to choose again. What will it be? The room or the hallway?", lchoice: "Room", rchoice: "Hall")
    
    
    let lvl3_1 = Node(value: " \"This is our chance. Let us find what we can and gear up!\" You and Deus pick up some of the armor you find in the room and a few devices that look a lot like the blasters you faintly remember from days in the academy. You can hear footsteps again. There are two doors to the room. The footsteps keep on getting louder with every passing second from and seemed to be coming from the door on the right. Deus seems to have unlocked the door on the left using the id attached to his armor. You feel that there might be a chance that you will be able to take out the Earthlings with what you have but are not too sure about it. On the other hand you have no clue about where the door that Deus unlocked leads to. Deus asks you to follow him. What do you do? Attack, or follow?", lchoice: "Attack", rchoice: "Follow")
    
    let lvl3_2 = Node(value: "\"We don’t have time for this we need to get out of here.\" You notice two doors in the room. Deus tried to get the door on the right to open up but it doesn’t budge an inch. You try the door on the left and Voila! It opens straight up. You and Deus rush along the path until you suddenly crash into the Earthlings who open fire. Filled with chaos, their shots are blinding and horrifying. Deus shields you from the shots. \"Lenny, you have to live, I did not get a chance to tell you everything that happened. Not about how I feel about you. About us. I am sorry.\" He has wry smile on his face as he closes his eyes. You are crestfallen. The only person you remember is dying right in front of you. In the moment, your life starts flashing before your eyes. How you and Deus first met in the academy. Your yearlong journey to Earth. How you joked about getting married when you returned. And, with that, you gave in. It was complete darkness followed by you joining Deus back in the icy Martian sands. It was the afterlife. You died.", lchoice: "", rchoice: "")
    
    let lvl3_3 = Node(value: "It is a decision made in the spur of the moment and you choose to go back to the room where you just came from. Deus was visibly frustrated. He asks you to hide in those lockers. \"It is too obvious. They are expecting you to be in the room right from the beginning. We need to get out of here! \" You turn around to face Deus and your hearts skipped a beat. The Earthlings are clad in a kind of armor you had never seen before and are silently sneaking up behind him. You yell out to him asking him to take cover but it is too late. Blinding flashes and deafening roars fill the air from their blasters and Deus falls over dying before he even had a chance to say something. You are drowning with guilt. You legs give out and you drop down to your kennes. With a face as cold as the sandstorms, the earthling approaches you but you can not feel your surroundings anymore. They put on restrains on you and lock the door again. It was back to where it was moments ago, but this time you know there is nobody coming to help you. It is all over.", lchoice: "", rchoice: "")
    
    let lvl3_4 = Node(value: "You and Deus have the same idea and choose two of the lockers to hide yourselves in. You can hear the Earthlings approaching. Your are breathing restlessly because you have literally locked yourself in a corner. There will be no escaping them if you are caught. You can now see their shadows dancing in a frenzy as they march towards and into the room. \"Damn her, she must have escaped through the vent! Half of you, follow Dave into the Red Room. The rest of you, come with me. We need to cover the exit on the west wing.\" You hearts are pounding. You finally draw another breath as they walk past you. Deus whispers from the locker over to the right, \"Should we try taking them one after the other by sneaking up on them? You know, like the academy training drills?\" You do not know if it is such a good idea. You could try to sneak up behind them or you could just wait it out a bit longer and think about another route. Whatever you choose to do, you have to decide quickly.", lchoice: "Sneak", rchoice: "Stay")
    
    let lvl4_1 = Node(value: " \"Deus! Stop, I think we should get rid of the Earthlings now. We can not keep running away like this for much longer. It would be wise if we finish them first and then look around for an escape pod or something.\" Deus seems reluctant. \"Looks like you have made up your mind. Let us give them a taste of what us Martians are made of then \", says Deus. The Earthlings are outside. You feel prepared to take them out and all your memories from the training that you did back at the academy Deus and you attended prior to your journey come back to you. You hear Deus squealing and start to feel uneasy yourself. You notice a green colored gas beginning to fill the entire chamber. You try to escape through the other door but it seems to be jammed now. \"Deus, I am sorry. I wish it did not have to end like this.\" You hold his hand in your final moments but fail to grasp all of what Deus what saying. You are dead.", lchoice: "", rchoice: "")
    
    let lvl4_2 = Node(value: "You follow Deus through the door. You come across an imposing colossal structure. You have no idea what it was but you walk towards it to have a closer look. You are startled by a red laser scanning through and an entrance open up. It appears to be the remnants of your crashed ship. You enter the ship. You see the corpses of you crew. \"Looks like it is just the both of us that made it. All of the escape pods that we had for returning to their moon are broken too. Except one.\" Just as Deus finishes speaking, you hear the Earthlings approaching. You quickly shut the door. \"Lenny, you need to take the pod and leave. I promise I will find a way back to their Moon\" says Deus. Taking the pod seems like the impulsive and logical choice. You could get back up to rescue Lenny. On the other hand, you feel like you could easily take the Earthlings out because you now have access to all your weaponry. However, scouting the planet is what you were sent here for, and your mission is still not a complete failure yet. You look at the bodies of your crew again. You have to make one very critical decision that will be of great consequence.", lchoice: "Escape", rchoice: "Fight")
    
    let lvl4_3 = Node(value: "You get flashbacks of your days in the academy. You spent countless hours preparing for a situation like this where you would have to engage the enemy, and everything you were taught about stealth. You call out to Deus \" Let us use the sequence from drill #49.\" \"On your lead!\" affirms Deus. The both of you quietly open your lockers, and sneak up behind the last Earthling in the enemy squad. You twist the neck without offering a window for resistance. Deus follows suit and takes out the other one. You equip the Earthlings' gear and join the remaining ones. You continue doing this until their numbers are down to the last four, and the one that seems like their leader catches wind of what is going on and just as he turns around you open fire and shred them to bits and pieces with your blasters. In the process they seem to have led you to a new hallway with an opening leading to a ginormous structure. It appears to be the remnants of your crashed ship. You enter the ship. You see the corpses of you crew. \"Looks like it is just the both of us that made it. All of the escape pods that we had for returning to their moon are broken too. Except one.\" Just as Deus finishes speaking, you hear the Earthlings approaching. You quickly shut the door. \"Lenny, you need to take the pod and leave. I promise I will find a way back to their Moon\" says Deus. Taking the pod seems like the impulsive and logical choice. You could get back up to rescue Lenny. On the other hand, you feel like you could easily take the Earthlings out because you now have access to all your weaponry. However, scouting the planet is what you were sent here for, and your mission is still not a complete failure yet. You look at the cold faces of your buddies from the crew. You have to make one very critical decision that will be of great consequence.", lchoice: "Fight", rchoice: "Escape")
    
    let lvl4_4 = Node(value: " \"Deus, I think we should hide in here until things are a little quiter \" you wishper", lchoice: "Run", rchoice: "Sneak")
    
    let lvl5_1 = Node(value: "Dead Chapter 1", lchoice: "Run", rchoice: "Sneak")
    let lvl5_2 = Node(value: "Fifth Chapter1", lchoice: "Run", rchoice: "Sneak")
    let lvl5_3 = Node(value: "Dead Chapter6", lchoice: "Run", rchoice: "Sneak")
    
    
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
        lvl4_3.add(child: lvl5_2)
        lvl4_3.add(child: lvl5_3)

        
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
            if node?.children.isEmpty == true && curr !== lvl5_2 {
                choice1.backgroundColor = UIColor.red
                choice1.contentHorizontalAlignment = .right
                choice2.contentHorizontalAlignment = .left
                choice2.backgroundColor = UIColor.red
                choice1.setTitle("YOU", for: .normal)
                choice2.setTitle(" DIED", for: .normal)
//                choice1.isHidden = true
//                choice2.isHidden = true
            } else if node?.children.isEmpty == true && curr === lvl5_2 {
                choice1.backgroundColor = UIColor.green
                choice1.contentHorizontalAlignment = .right
                choice2.contentHorizontalAlignment = .left
                choice2.backgroundColor = UIColor.green
                choice1.setTitle("YOU SU", for: .normal)
                choice2.setTitle("RVIVED", for: .normal)
            }
        } else {
            storyTextView.text = "You died"
            choice1.isHidden = true
            choice2.isHidden = true
        }
    }
}
