//
//  ItunesModule.swift
//  AppetizerExamIOS
//
//  Created by David Andrew Francis Duldulao on 01/03/2019.
//  Copyright © 2019 AppetizerIOSCodingExam. All rights reserved.
//

import Foundation
class ItunesListModule {
    
    internal func provideItunesListRespository() -> ItunesListRepository {
        return ItunesListRespositoryImpl(api: provideItunesListApiService())
    }
    
    internal func provideItunesListApiService() -> ItunesListApiService {
        return ItunesListApiService()
    }
}
