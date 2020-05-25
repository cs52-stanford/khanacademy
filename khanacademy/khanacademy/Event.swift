//
//  Event.swift
//  projWork
//
//  Created by Poojit Hegde on 5/5/20.
//  Copyright © 2020 Poojit Hegde. All rights reserved.
//

import Foundation
import UIKit

class Event {
    var name: String
    var date: String
    //var time: String
    var location: String
    var organization: String
    //var category: String
    
    
    init(name: String, date: String, location: String, organization: String) {
        self.name = name;
        self.date = date;
        self.location = location;
        self.organization = organization;
        
    }
}
