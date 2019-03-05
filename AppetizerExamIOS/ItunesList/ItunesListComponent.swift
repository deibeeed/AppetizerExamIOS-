//
//  ItunesListComponent.swift
//  AppetizerExamIOS
//
//  Created by David Andrew Francis Duldulao on 01/03/2019.
//  Copyright © 2019 AppetizerIOSCodingExam. All rights reserved.
//

import Foundation
class ItunesListComponent {
    func inject(withViewModel viewModel: ItunesListViewModel) {
        let module = ItunesListModule()
        viewModel.repository = module.provideItunesListRespository()
    }
}
