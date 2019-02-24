//
//  ModelC.swift
//  TestApp
//
//  Created by Станислав Любченко on 01/11/2018.
//  Copyright © 2018 Станислав Любченко. All rights reserved.
//

import Foundation

@objcMembers class ModelC: NSObject {
    let property1: String
    let property2: ModelA
    let property3: ModelB
    
    init(property1: String, property2: ModelA, property3: ModelB) {
        self.property1 = property1
        self.property2 = property2
        self.property3 = property3
        super.init()
    }
}
