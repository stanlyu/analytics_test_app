//
//  AnalyticsParameterValue.swift
//  TestApp
//
//  Created by Станислав Любченко on 01/11/2018.
//  Copyright © 2018 Станислав Любченко. All rights reserved.
//

import Foundation

enum AnalyticsParameterValue {
    case string(String)
    case integer(Int)
    case double(Double)
    case boolean(Bool)
    indirect case array([AnalyticsParameterValue])
    indirect case dictionary([ParameterName : AnalyticsParameterValue])
}

extension Dictionary where Dictionary.Key == ParameterName, Dictionary.Value == AnalyticsParameterValue {
    var dictionary: [String : Any] {
        return dictionary(from: self)
    }
    
    private func dictionary(from parameters: [ParameterName : AnalyticsParameterValue]) -> [String : Any] {
        var result = [String : Any]()
        
        for (name, value) in parameters {
            result[name.rawValue] = extractValue(from: value)
        }
        
        return result
    }
    
    private func array(from parameters: [AnalyticsParameterValue]) -> [Any] {
        var result = [Any]()
        
        for item in parameters {
            result.append(extractValue(from: item))
        }
        
        return result
    }
    
    private func extractValue(from parameterValue: AnalyticsParameterValue) -> Any {
        switch parameterValue {
        case let .dictionary(dictionary): return self.dictionary(from: dictionary)
        case let .array(array): return self.array(from: array)
        case .boolean(let value): return value
        case .integer(let value): return value
        case .double(let value): return value
        case .string(let value): return value
        }
    }
}
