//
//  ItunesListApiService.swift
//  AppetizerExamIOS
//
//  Created by David Andrew Francis Duldulao on 01/03/2019.
//  Copyright © 2019 AppetizerIOSCodingExam. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON
import AlamofireObjectMapper
import RxSwift
import RxCocoa

class ItunesListApiService {
    func load() -> Observable<[ITunes]> {
        return Observable.create({ (observer) -> Disposable in
            let apiRequest = self.doRequest(observer: observer)
            
            return Disposables.create {
                apiRequest.cancel()
            }
        })
    }
    
    private func doRequest(observer: AnyObserver<[ITunes]>) -> Request {
        return AF.request("https://itunes.apple.com/search?term=star&amp;country=au&amp;media=movie")
            .responseObject { (response: DataResponse<ITunesWrapper>) in
                switch response.result {
                case .success:
                    let wrapper = response.result.value
                    let count = wrapper?.resultCount
                    let results = wrapper?.results
                    
                    print("response from network: \ncount: \(count)\nresults: \(results)")
                    
                    if let result = results {
                        observer.on(.next(result))
                        observer.on(.completed)
                        return
                    }
                    
                    observer.on(.error(NSError(domain: "No results found", code: 500)))
                    break
                case .failure(let err):
                    print(err)
                    observer.on(.error(err))
                }
        }
    }
}
