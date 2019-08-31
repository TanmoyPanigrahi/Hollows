//
//  Node.swift
//  Hollows
//
//  Created by Tanmoy Panigrahi on 7/23/19.
//  Copyright © 2019 Tanmoy Panigrahi. All rights reserved.
//

import Foundation


class Node {
    var value: String
    var lchoice: String
    var rchoice: String
    var children: [Node] = []
    weak var parent: Node?
    
    init(value: String, lchoice: String, rchoice: String) {
        self.value = value
        self.lchoice = lchoice
        self.rchoice = rchoice
    }
    
    func add(child: Node) {
        children.append(child)
        child.parent = self
    }
}
