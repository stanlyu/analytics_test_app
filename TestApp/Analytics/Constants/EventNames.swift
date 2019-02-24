//
//  EventNames.swift
//  TestApp
//
//  Created by Станислав Любченко on 01/11/2018.
//  Copyright © 2018 Станислав Любченко. All rights reserved.
//

import Foundation

// Values of ParamName.eventName parameter
enum EventName: String {
    case event1 = "event 1"
    case event2 = "event 2"
    case event3 = "event 3"
    
    private var `default`: String {
        return rawValue
    }
    
    var ga: String {
        switch self {
        case .event1:
            return "ga event 1"
        case .event2,
             .event3:
            return self.default
        }
    }
    
    var sopr: String {
        switch self {
        case .event1,
             .event3:
            return self.default
        case .event2:
            return "sopr event 2"
        }
    }
}
