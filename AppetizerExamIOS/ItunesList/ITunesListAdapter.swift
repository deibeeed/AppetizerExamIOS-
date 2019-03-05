//
//  ITunesListAdapter.swift
//  AppetizerExamIOS
//
//  Created by David Andrew Francis Duldulao on 04/03/2019.
//  Copyright © 2019 AppetizerIOSCodingExam. All rights reserved.
//

import Foundation
import UIKit

class ITunesListAdapter: NSObject, UITableViewDelegate, UITableViewDataSource {
    weak var tableView: UITableView?
    
    init(withTableView tableView: UITableView) {
        self.tableView = tableView
        
        self.tableView?.dataSource = self
        self.tableView?.delegate = self
    }
    
    // MARK: number of rows
    // if it has seactions, this connotes to number of rows in a section.
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    // MARK: resusing and binding of cell
    // this is just like onBindView in android recycler adapters.
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
}
