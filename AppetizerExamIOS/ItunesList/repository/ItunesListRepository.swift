//
//  ItunesListRepository.swift
//  AppetizerExamIOS
//
//  Created by David Andrew Francis Duldulao on 01/03/2019.
//  Copyright © 2019 AppetizerIOSCodingExam. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

protocol ItunesListRepository {
    func load() -> Observable<[ITunes]>
}
