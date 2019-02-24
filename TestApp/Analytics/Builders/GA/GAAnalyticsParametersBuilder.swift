//
//  GAAnalyticsParametersBuilder.swift
//  TestApp
//
//  Created by Станислав Любченко on 18/11/2018.
//  Copyright © 2018 Станислав Любченко. All rights reserved.
//

import Foundation

class GAAnalyticsParametersBuilder {
    
    var parameters: [ParameterName : AnalyticsParameterValue] = [:]
}

extension GAAnalyticsParametersBuilder: CommonAnalyticsParametersBuilder {
    
    @discardableResult
    func buildOsVersion() -> CommonAnalyticsParametersBuilder {
        let osVersion: String = "iOS 12.0"
        parameters[.iOSVersion] = .string(osVersion)
        return self
    }
    
    @discardableResult
    func buildAppVersion() -> CommonAnalyticsParametersBuilder {
        let appVersion: String = "Cian 1.68.0"
        parameters[.appVersion] = .string(appVersion)
        return self
    }
    
    @discardableResult
    func build(eventName: EventName) -> CommonAnalyticsParametersBuilder {
        parameters[.eventName] = .string(eventName.ga)
        return self
    }
    
    @discardableResult
    func build(source: Source) -> CommonAnalyticsParametersBuilder {
        parameters[.source] = .string(source.ga)
        return self
    }
    
    @discardableResult
    func buildDefaultParameters(eventName: EventName, source: Source? = nil) -> CommonAnalyticsParametersBuilder {
        buildOsVersion().buildAppVersion().build(eventName: eventName)
        
        if let source = source {
            build(source: source)
        }
        
        return self
    }
    
    
    // MARK: - Other builders
    
    var modelABuilder: ModelAAnalyticsParametersBuilder {
        return self
    }
    
    var modelBBuilder: ModelBAnalyticsParametersBuilder {
        return self
    }
    
    var modelCBuilder: ModelCAnalyticsParametersBuilder {
        return self
    }
}


extension GAAnalyticsParametersBuilder: ModelAAnalyticsParametersBuilder {
    
    @discardableResult
    func build(modelAProperty1: String) -> ModelAAnalyticsParametersBuilder {
        parameters[.modelAProperty1] = .string(modelAProperty1)
        return self
    }
    
    @discardableResult
    func build(modelAProperty2: Double) -> ModelAAnalyticsParametersBuilder {
        parameters[.modelAProperty2] = .double(modelAProperty2)
        return self
    }
    
    @discardableResult
    func build(modelAProperty3: Int) -> ModelAAnalyticsParametersBuilder {
        parameters[.modelAProperty3] = .integer(modelAProperty3)
        return self
    }
}

extension GAAnalyticsParametersBuilder: ModelBAnalyticsParametersBuilder {
    
    @discardableResult
    func build(modelBProperty1: String) -> ModelBAnalyticsParametersBuilder {
        parameters[.modelBProperty1] = .string(modelBProperty1)
        return self
    }
    
    @discardableResult
    func build(modelBProperty2: Double) -> ModelBAnalyticsParametersBuilder {
        parameters[.modelBProperty2] = .double(modelBProperty2)
        return self
    }
    
    @discardableResult
    func build(modelBProperty3: Int) -> ModelBAnalyticsParametersBuilder {
        parameters[.modelBProperty3] = .integer(modelBProperty3)
        return self
    }
    
    @discardableResult
    func build(modelBProperty4: Bool) -> ModelBAnalyticsParametersBuilder {
        parameters[.modelBProperty4] = .boolean(modelBProperty4)
        return self
    }
}


extension GAAnalyticsParametersBuilder: ModelCAnalyticsParametersBuilder {
    
    @discardableResult
    func build(modelCProperty1: String) -> ModelCAnalyticsParametersBuilder {
        parameters[.modelCProperty1] = .string(modelCProperty1)
        return self
    }
    
    @discardableResult
    func build(modelCProperty2: String) -> ModelCAnalyticsParametersBuilder {
        parameters[.modelCProperty2] = .string(modelCProperty2)
        return self
    }
    
    @discardableResult
    func build(modelCProperty3: String) -> ModelCAnalyticsParametersBuilder {
        parameters[.modelCProperty3] = .string(modelCProperty3)
        return self
    }
}
