//
//  ModelA.swift
//  TestApp
//
//  Created by Станислав Любченко on 01/11/2018.
//  Copyright © 2018 Станислав Любченко. All rights reserved.
//

import Foundation

@objcMembers class ModelA: NSObject {
    let property1: String
    let property2: Double
    let property3: Int
    
    init(property1: String, property2: Double, property3: Int) {
        self.property1 = property1
        self.property2 = property2
        self.property3 = property3
        super.init()
    }
}
