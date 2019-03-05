//
//  ItunesListViewModel.swift
//  AppetizerExamIOS
//
//  Created by David Andrew Francis Duldulao on 01/03/2019.
//  Copyright © 2019 AppetizerIOSCodingExam. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

class ItunesListViewModel {
    private let component = ItunesListComponent()
    private let disposables = DisposeBag()
    var repository: ItunesListRepository? = nil
    
    // used for observing values
    var itunes: [ITunes]? {
        didSet {
            self.updateList?()
        }
    }
    
    var updateList: (() -> ())?
    
    init() {
        print("ItunesList ViewModel initialized")
        initiateInjection()
    }
    
    private func initiateInjection() {
        component.inject(withViewModel: self)
    }
    
    func load() {
        repository?.load()
            .subscribe { event in
                switch event {
                    case .next(let result):
                        self.itunes = result
                    case .error(let err):
                        print("error loading itunes: \(err.localizedDescription)")
                    case .completed: print("load complete")
                }
            }
        .disposed(by: disposables)
    }
}
