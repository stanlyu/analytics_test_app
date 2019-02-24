//
//  AnalyticsParametersBuilders.swift
//  TestApp
//
//  Created by Станислав Любченко on 18/11/2018.
//  Copyright © 2018 Станислав Любченко. All rights reserved.
//

import Foundation

protocol CommonAnalyticsParametersBuilder {
    
    @discardableResult
    func buildOsVersion() -> CommonAnalyticsParametersBuilder
    
    @discardableResult
    func buildAppVersion() -> CommonAnalyticsParametersBuilder
    
    @discardableResult
    func build(eventName: EventName) -> CommonAnalyticsParametersBuilder
    
    @discardableResult
    func build(source: Source) -> CommonAnalyticsParametersBuilder
    
    @discardableResult
    func buildDefaultParameters(eventName: EventName, source: Source?) -> CommonAnalyticsParametersBuilder
    
    
    // MARK: - Other builders
    
    var modelABuilder: ModelAAnalyticsParametersBuilder {get}
    var modelBBuilder: ModelBAnalyticsParametersBuilder {get}
    var modelCBuilder: ModelCAnalyticsParametersBuilder {get}
}

protocol ModelAAnalyticsParametersBuilder {
    @discardableResult
    func build(modelAProperty1: String) -> ModelAAnalyticsParametersBuilder
    
    @discardableResult
    func build(modelAProperty2: Double) -> ModelAAnalyticsParametersBuilder
    
    @discardableResult
    func build(modelAProperty3: Int) -> ModelAAnalyticsParametersBuilder
}

protocol ModelBAnalyticsParametersBuilder {
    @discardableResult
    func build(modelBProperty1: String) -> ModelBAnalyticsParametersBuilder
    
    @discardableResult
    func build(modelBProperty2: Double) -> ModelBAnalyticsParametersBuilder
    
    @discardableResult
    func build(modelBProperty3: Int) -> ModelBAnalyticsParametersBuilder
    
    @discardableResult
    func build(modelBProperty4: Bool) -> ModelBAnalyticsParametersBuilder
}

protocol ModelCAnalyticsParametersBuilder {
    @discardableResult
    func build(modelCProperty1: String) -> ModelCAnalyticsParametersBuilder
    
    @discardableResult
    func build(modelCProperty2: String) -> ModelCAnalyticsParametersBuilder
    
    @discardableResult
    func build(modelCProperty3: String) -> ModelCAnalyticsParametersBuilder
}

// MARK: - ObjC wrapper
@objc class ObjCWrapperAnalyticsParametersBuilder: NSObject, CommonAnalyticsParametersBuilder {
    
    private let builder: CommonAnalyticsParametersBuilder
    
    init(builder: CommonAnalyticsParametersBuilder) {
        self.builder = builder
    }
    
    @discardableResult
    func buildOsVersion() -> CommonAnalyticsParametersBuilder {
        return builder.buildOsVersion()
    }
    
    @discardableResult
    func buildAppVersion() -> CommonAnalyticsParametersBuilder {
        return builder.buildAppVersion()
    }
    
    @discardableResult
    func build(eventName: EventName) -> CommonAnalyticsParametersBuilder {
        return builder.build(eventName:eventName)
    }
    
    @discardableResult
    func build(source: Source) -> CommonAnalyticsParametersBuilder {
        return builder.build(source:source)
    }
    
    @discardableResult
    func buildDefaultParameters(eventName: EventName, source: Source?) -> CommonAnalyticsParametersBuilder {
        return builder.buildDefaultParameters(eventName:eventName, source:source)
    }
    
    var modelABuilder: ModelAAnalyticsParametersBuilder {
        return builder.modelABuilder
    }
    
    var modelBBuilder: ModelBAnalyticsParametersBuilder {
        return builder.modelBBuilder
    }
    
    var modelCBuilder: ModelCAnalyticsParametersBuilder {
        return builder.modelCBuilder
    }
}
