//
//  AnalyticsService.swift
//  TestApp
//
//  Created by Станислав Любченко on 01/11/2018.
//  Copyright © 2018 Станислав Любченко. All rights reserved.
//

import Foundation

protocol AnalyticsService {
    func sendEvent( _ event: AnalyticsEvent)
}
