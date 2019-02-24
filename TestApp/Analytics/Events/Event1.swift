//
//  Event1.swift
//  TestApp
//
//  Created by Станислав Любченко on 01/11/2018.
//  Copyright © 2018 Станислав Любченко. All rights reserved.
//

import Foundation

@objc class Event1: NSObject, AnalyticsEvent {
    private let modelA: ModelA
    private let source: Source
    
    @objc init(modelA: ModelA, source: Source) {
        self.modelA = modelA
        self.source = source
        super.init()
    }
    
    
    // MARK: - GA analytics parameters
    
    func configurateGaParameters(with builder: ObjCWrapperAnalyticsParametersBuilder) {
        builder.buildDefaultParameters(eventName: EventName.event1, source: source)
            .modelABuilder
            .build(modelAProperty1: modelA.property1)
            .build(modelAProperty2: modelA.property2)
            .build(modelAProperty3: modelA.property3)
    }
    
    
    // MARK: - Sopr analytics parameters
    
    func configurateSoprParameters(with builder: ObjCWrapperAnalyticsParametersBuilder) {
        builder.buildDefaultParameters(eventName: EventName.event1, source: source)
            .modelABuilder
            .build(modelAProperty1: modelA.property1)
            .build(modelAProperty3: modelA.property3)
    }
}
