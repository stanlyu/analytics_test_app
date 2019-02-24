//
//  GAService.swift
//  TestApp
//
//  Created by Станислав Любченко on 01/11/2018.
//  Copyright © 2018 Станислав Любченко. All rights reserved.
//

import Foundation

class GAService: AnalyticsService {
    func sendEvent( _ event: AnalyticsEvent)  {
        let builder = GAAnalyticsParametersBuilder()
        let objCBuilder = ObjCWrapperAnalyticsParametersBuilder(builder: builder)
        event.configurateGaParameters(with: objCBuilder)
        guard !builder.parameters.dictionary.isEmpty else { return }
        print("Send event to ga with parameters: \(builder.parameters.dictionary)")
    }
}
