//
//  Sources.swift
//  TestApp
//
//  Created by Станислав Любченко on 01/11/2018.
//  Copyright © 2018 Станислав Любченко. All rights reserved.
//

import Foundation

// Values of parameter ParamName.source
@objc enum Source: Int {
    case source1, source2, source3
    
    private var `default`: String {
        switch self {
        case .source1: return "source 1"
        case .source2: return "source 2"
        case .source3: return "source 3"
        }
    }
    
    var ga: String {
        switch self {
        case .source1,
             .source2:
            return self.default
        case .source3:
            return "ga " + self.default
        }
    }
    
    var sopr: String {
        switch self {
        case .source1,
             .source2:
            return self.default
        case .source3:
            return "sopr " + self.default
        }
    }
}
