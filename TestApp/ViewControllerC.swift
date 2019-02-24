//
//  ViewControllerC.swift
//  TestApp
//
//  Created by Станислав Любченко on 05/11/2018.
//  Copyright © 2018 Станислав Любченко. All rights reserved.
//

import UIKit

@objcMembers class ViewControllerC: UIViewController {
    var modelC: ModelC?
    @IBOutlet private weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = modelC?.property1
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if let modelC = self.modelC {
            AnalyticsManager.shared.log(event: Event3(modelC: modelC, source: .source3), analyticsType: .GA)
        }
    }
}
