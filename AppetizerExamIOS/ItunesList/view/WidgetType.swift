//
//  WidgetType.swift
//  AppetizerExamIOS
//
//  Created by David Andrew Francis Duldulao on 05/03/2019.
//  Copyright © 2019 AppetizerIOSCodingExam. All rights reserved.
//

import Foundation

enum WidgetType: Int, CaseIterable {
    case TYPE_ITEM = 0
    
    init(rawValue: Int) {
        self = WidgetType.allCases[rawValue]
    }
}
