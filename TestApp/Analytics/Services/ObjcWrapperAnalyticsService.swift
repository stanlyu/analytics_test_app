//
//  ObjcWrapperAnalyticsService.swift
//  TestApp
//
//  Created by Станислав Любченко on 22/11/2018.
//  Copyright © 2018 Станислав Любченко. All rights reserved.
//

import Foundation

@objc class ObjcWrapperAnalyticsService: NSObject {
    
    let service: AnalyticsService
    
    private init(service: AnalyticsService) {
        self.service = service
        super.init()
    }
    
    @objc static var gaService: ObjcWrapperAnalyticsService {
        return ObjcWrapperAnalyticsService(service: GAService())
    }
    
    @objc static var soprService: ObjcWrapperAnalyticsService {
        return ObjcWrapperAnalyticsService(service: SoprService())
    }
}
