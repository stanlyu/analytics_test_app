//
//  AnalyticsEvent.swift
//  TestApp
//
//  Created by Станислав Любченко on 01/11/2018.
//  Copyright © 2018 Станислав Любченко. All rights reserved.
//

import Foundation

@objc protocol AnalyticsEvent: NSObjectProtocol {
    
    // MARK: - GA analytics parameters
    
    func configurateGaParameters(with builder: ObjCWrapperAnalyticsParametersBuilder)
    
    
    // MARK: - Sopr analytics parameters
    
    func configurateSoprParameters(with builder: ObjCWrapperAnalyticsParametersBuilder)
}
