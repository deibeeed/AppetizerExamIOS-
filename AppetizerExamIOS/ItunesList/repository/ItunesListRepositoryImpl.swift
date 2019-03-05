//
//  ItunesListRepositoryImpl.swift
//  AppetizerExamIOS
//
//  Created by David Andrew Francis Duldulao on 01/03/2019.
//  Copyright © 2019 AppetizerIOSCodingExam. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

class ItunesListRespositoryImpl: ItunesListRepository {
    
    var api: ItunesListApiService
    
    init(api: ItunesListApiService) {
        self.api = api
    }
    
    func load() -> Observable<[ITunes]> {
        return api.load()
//            .subscribe { event in
//                switch event {
//                case .next(let result):
//                    result.forEach({ (itunes) in
//                        print("item: \(itunes.trackId)")
//                    })
//                case .error(let err):
//                    print("error: \(err.localizedDescription)")
//                case .completed:
//                    print("loading complete")
//                }
//        }
    }
}
