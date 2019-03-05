//
//  ITunesWrapper.swift
//  AppetizerExamIOS
//
//  Created by David Andrew Francis Duldulao on 04/03/2019.
//  Copyright © 2019 AppetizerIOSCodingExam. All rights reserved.
//

import Foundation
import ObjectMapper

class ITunesWrapper: Mappable {
    var resultCount: Int = -1
    var results: [ITunes] = []
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        self.resultCount <- map["resultCount"]
        self.results <- map["results"]
    }
}
