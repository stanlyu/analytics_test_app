//
//  Event3.swift
//  TestApp
//
//  Created by Станислав Любченко on 01/11/2018.
//  Copyright © 2018 Станислав Любченко. All rights reserved.
//

import Foundation

@objc class Event3: NSObject, AnalyticsEvent {
    private let modelC: ModelC
    private let source: Source
    
    @objc init(modelC: ModelC, source: Source) {
        self.modelC = modelC
        self.source = source
        super.init()
    }
    
    
    // MARK: - GA analytics parameters
    
    func configurateGaParameters(with builder: ObjCWrapperAnalyticsParametersBuilder) {
        builder.buildDefaultParameters(eventName: EventName.event2, source: source)
            .modelCBuilder
            .build(modelCProperty1: modelC.property1)
            .build(modelCProperty2: modelC.property2.property1)
    }
    
    
    // MARK: - Sopr analytics parameters
    
    func configurateSoprParameters(with builder: ObjCWrapperAnalyticsParametersBuilder) {
        builder.buildDefaultParameters(eventName: EventName.event2, source: source)
            .modelCBuilder
            .build(modelCProperty1: modelC.property1)
            .build(modelCProperty2: modelC.property2.property1)
            .build(modelCProperty3: modelC.property3.property1)
    }
}
