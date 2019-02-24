//
//  Analytics.swift
//  TestApp
//
//  Created by Станислав Любченко on 28/10/2018.
//  Copyright © 2018 Станислав Любченко. All rights reserved.
//

import Foundation

@objcMembers class AnalyticsManager: NSObject {
    static let shared: AnalyticsManager = AnalyticsManager()
    private var services: [AnalyticsService] = []
    
    private override init() {
        super.init()
    }
    
    @nonobjc func addService(_ service: AnalyticsService) {
        services.append(service)
    }
    
    func addObjcWrapperService(_ service: ObjcWrapperAnalyticsService) {
        addService(service.service)
    }
    
    func log(event: AnalyticsEvent, analyticsType: AnalyticsType = .all) {
        services.forEach { service in
            switch service {
            case is GAService:
                if analyticsType.contains(.GA) {
                    service.sendEvent(event)
                }
            case is SoprService:
                if analyticsType.contains(.sopr) {
                    service.sendEvent(event)
                }
            default: break;
            }
        }
    }
    
    func log(event: AnalyticsEvent) {
        log(event: event, analyticsType: .all)
    }
}
