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
    var timeRemaining: Int;
    
    init(event: String, location: String, timeRemaining: Int){
        self.event = event
        self.location = location;
        self.timeRemaining = timeRemaining;
    }
    
    func toString() -> String{
        
        print(("n\(self.event) \n\t\(self.location)\n\t\(self.timeRemaining)"))
        return ("n\(self.event) \n\t\(self.location)\n\t\(self.timeRemaining)")
    }
}
