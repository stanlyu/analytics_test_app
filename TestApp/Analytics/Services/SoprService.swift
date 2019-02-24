//
//  SoprService.swift
//  TestApp
//
//  Created by Станислав Любченко on 01/11/2018.
//  Copyright © 2018 Станислав Любченко. All rights reserved.
//

import Foundation

class SoprService: AnalyticsService {
    func sendEvent(_ event: AnalyticsEvent) {
        let builder = SoprAnalyticsParametersBuilder()
        let objCBuilder = ObjCWrapperAnalyticsParametersBuilder(builder: builder)
        event.configurateSoprParameters(with: objCBuilder)
        guard !builder.parameters.dictionary.isEmpty else { return }
        print("Send event to sopr with parameters: \(builder.parameters.dictionary)")
    }
}
