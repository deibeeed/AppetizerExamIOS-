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
    private var list: [ITunes] = []
    
    init(withTableView tableView: UITableView) {
        super.init()
        
        self.tableView = tableView
        
        self.tableView?.dataSource = self
        self.tableView?.delegate = self
        
        for type in WidgetType.allCases {
            let identifier = getWidgetCellIdentifier(for: type)
            self.tableView?.register(UINib(nibName: identifier, bundle: nil), forCellReuseIdentifier: identifier)
        }
    }
    
    func set(list: [ITunes]) {
        self.list = list
        self.tableView?.reloadData()
    }
    
    // MARK: number of rows
    // if it has seactions, this connotes to number of rows in a section.
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    // MARK: resusing and binding of cell
    // this is just like onBindView in android recycler adapters.
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let data = list[indexPath.row]
        let cellIdentifier = getWidgetCellIdentifier(for: data.type)
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! BaseTableViewCell
        
        cell.bind(data: data)
        
        return cell
    }
    
    // height of each row.
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 167.0
    }
    
    fileprivate func getWidgetCellIdentifier(for type: WidgetType) -> String {
        switch type {
        case .TYPE_ITEM:
            return ItunesItemTableViewCell.identifier
        }
    }
}
