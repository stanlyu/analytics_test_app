//
//  SoprAnalyticsParametersBuilder.swift
//  TestApp
//
//  Created by Станислав Любченко on 11/11/2018.
//  Copyright © 2018 Станислав Любченко. All rights reserved.
//

import Foundation

class SoprAnalyticsParametersBuilder {
    
    // MARK: - properties
    
    var parameters: [ParameterName : AnalyticsParameterValue] = [:]
    var common: [ParameterName : AnalyticsParameterValue] {
        if let commonParams = parameters[.common], case let .dictionary(common) = commonParams {
            return common
        }
        
        return [:]
    }
    
    var data: [ParameterName : AnalyticsParameterValue] {
        if let dataParams = parameters[.data], case let .dictionary(data) = dataParams {
            return data
        }
        
        return [:]
    }
}

extension SoprAnalyticsParametersBuilder: CommonAnalyticsParametersBuilder {
    
    @discardableResult
    func buildOsVersion() -> CommonAnalyticsParametersBuilder {
        let osVersion: String = "iOS 12.0"
        var common = self.common
        common[.iOSVersion] = .string(osVersion)
        parameters[.common] = .dictionary(common)
        return self
    }
    
    @discardableResult
    func buildAppVersion() -> CommonAnalyticsParametersBuilder {
        var common = self.common
        let appVersion: String = "Cian 1.68.0"
        common[.appVersion] = .string(appVersion)
        parameters[.common] = .dictionary(common)
        return self
    }
    
    @discardableResult
    func build(eventName: EventName) -> CommonAnalyticsParametersBuilder {
        var common = self.common
        common[.eventName] = .string(eventName.sopr)
        parameters[.common] = .dictionary(common)
        return self
    }
    
    @discardableResult
    func build(source: Source) -> CommonAnalyticsParametersBuilder {
        var common = self.common
        common[.source] = .string(source.sopr)
        parameters[.common] = .dictionary(common)
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

extension SoprAnalyticsParametersBuilder: ModelAAnalyticsParametersBuilder {
    
    @discardableResult
    func build(modelAProperty1: String) -> ModelAAnalyticsParametersBuilder {
        var data = self.data
        data[.modelAProperty1] = .string(modelAProperty1)
        parameters[.data] = .dictionary(data)
        return self
    }
    
    @discardableResult
    func build(modelAProperty2: Double) -> ModelAAnalyticsParametersBuilder {
        var data = self.data
        data[.modelAProperty2] = .double(modelAProperty2)
        parameters[.data] = .dictionary(data)
        return self
    }
    
    @discardableResult
    func build(modelAProperty3: Int) -> ModelAAnalyticsParametersBuilder {
        var data = self.data
        data[.modelAProperty3] = .integer(modelAProperty3)
        parameters[.data] = .dictionary(data)
        return self
    }
}

extension SoprAnalyticsParametersBuilder: ModelBAnalyticsParametersBuilder {
    
    func build(modelBProperty1: String) -> ModelBAnalyticsParametersBuilder {
        var data = self.data
        data[.modelBProperty1] = .string(modelBProperty1)
        parameters[.data] = .dictionary(data)
        return self
    }
    
    func build(modelBProperty2: Double) -> ModelBAnalyticsParametersBuilder {
        var data = self.data
        data[.modelBProperty2] = .double(modelBProperty2)
        parameters[.data] = .dictionary(data)
        return self
    }
    
    func build(modelBProperty3: Int) -> ModelBAnalyticsParametersBuilder {
        var data = self.data
        data[.modelBProperty3] = .integer(modelBProperty3)
        parameters[.data] = .dictionary(data)
        return self
    }
    
    func build(modelBProperty4: Bool) -> ModelBAnalyticsParametersBuilder {
        var data = self.data
        data[.modelBProperty4] = .boolean(modelBProperty4)
        parameters[.data] = .dictionary(data)
        return self
    }
}

extension SoprAnalyticsParametersBuilder: ModelCAnalyticsParametersBuilder {
    
    func build(modelCProperty1: String) -> ModelCAnalyticsParametersBuilder {
        var data = self.data
        data[.modelCProperty1] = .string(modelCProperty1)
        parameters[.data] = .dictionary(data)
        return self
    }
    
    func build(modelCProperty2: String) -> ModelCAnalyticsParametersBuilder {
        var data = self.data
        data[.modelCProperty2] = .string(modelCProperty2)
        parameters[.data] = .dictionary(data)
        return self
    }
    
    func build(modelCProperty3: String) -> ModelCAnalyticsParametersBuilder {
        var data = self.data
        data[.modelCProperty3] = .string(modelCProperty3)
        parameters[.data] = .dictionary(data)
        return self
    }
}
