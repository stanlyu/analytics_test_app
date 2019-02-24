//
//  ParameterNames.swift
//  TestApp
//
//  Created by Станислав Любченко on 01/11/2018.
//  Copyright © 2018 Станислав Любченко. All rights reserved.
//

import Foundation

enum ParameterName: String {
    case eventName = "event name"
    case source = "source"
    case iOSVersion = "iOS version"
    case appVersion = "application version"
    case common = "common"
    case data = "data"
    case modelAProperty1 = "parameter A1"
    case modelAProperty2 = "parameter A2"
    case modelAProperty3 = "parameter A3"
    case modelBProperty1 = "parameter B1"
    case modelBProperty2 = "parameter B2"
    case modelBProperty3 = "parameter B3"
    case modelBProperty4 = "parameter B4"
    case modelCProperty1 = "parameter C1"
    case modelCProperty2 = "parameter C2"
    case modelCProperty3 = "parameter C3"
    
    private var `default`: String {
        return rawValue
    }
    
    var ga: String {
        switch self {
        case .eventName,
             .source,
             .iOSVersion,
             .appVersion,
             .common,
             .data,
             .modelAProperty1,
             .modelAProperty2,
             .modelAProperty3,
             .modelBProperty2,
             .modelBProperty3,
             .modelCProperty1,
             .modelCProperty3:
            return self.default
        case .modelBProperty1, .modelBProperty4, .modelCProperty2:
            return "ga " + self.default
        }
    }
    
    var sopr: String {
        switch self {
        case .eventName:
            return "event"
        case .source:
            return "screen"
        case .modelAProperty1, .modelBProperty2, .modelCProperty3:
            return "sopr " + self.default
        case .iOSVersion,
             .appVersion,
             .common,
             .data,
             .modelAProperty2,
             .modelAProperty3,
             .modelBProperty1,
             .modelBProperty3,
             .modelBProperty4,
             .modelCProperty1,
             .modelCProperty2:
            return self.default
        }
    }
}
