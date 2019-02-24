//
//  Event2.swift
//  TestApp
//
//  Created by Станислав Любченко on 01/11/2018.
//  Copyright © 2018 Станислав Любченко. All rights reserved.
//

import Foundation

@objc class Event2: NSObject, AnalyticsEvent {
    private let modelB: ModelB
    private let source: Source
    
    @objc init(modelB: ModelB, source: Source) {
        self.modelB = modelB
        self.source = source
        super.init()
    }
    
    
    // MARK: - GA analyticsParameters
    
    func configurateGaParameters(with builder: ObjCWrapperAnalyticsParametersBuilder) {
        configurateParameters(with: builder)
    }
    
    
    // MARK: - Sopr analyticsParameters
    
    func configurateSoprParameters(with builder: ObjCWrapperAnalyticsParametersBuilder) {
        configurateParameters(with: builder)
    }
    
    // MARK: - Private
    
    func configurateParameters(with builder: CommonAnalyticsParametersBuilder) {
        builder.buildDefaultParameters(eventName: EventName.event2, source: source)
            .modelBBuilder
            .build(modelBProperty1: modelB.property1)
            .build(modelBProperty2: modelB.property2)
            .build(modelBProperty3: modelB.property3)
            .build(modelBProperty4: modelB.property4)
    }
}
