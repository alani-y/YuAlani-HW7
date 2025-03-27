//
//  Timer.swift
//  YuAlani-HW7
//
//  Created by Alani Yu on 3/27/25.
//

import Foundation

class Timer {
    var event: String;
    var location: String;
    var timeRemaining: Float;
    
    init(event: String, location: String, timeRemaining: Float){
        self.event = event
        self.location = location;
        self.timeRemaining = timeRemaining;
    }
}
