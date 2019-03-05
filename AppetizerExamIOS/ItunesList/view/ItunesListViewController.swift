//
//  ViewController.swift
//  AppetizerExamIOS
//
//  Created by David Andrew Francis Duldulao on 01/03/2019.
//  Copyright © 2019 AppetizerIOSCodingExam. All rights reserved.
//

import UIKit

class ItunesListViewController: UIViewController {
    @IBOutlet weak var tableItunes: UITableView!
    
    lazy var itunesListVM: ItunesListViewModel = {
       return ItunesListViewModel()
    }()
    
    lazy var adapter: ITunesListAdapter = {
        return ITunesListAdapter(withTableView: tableItunes)
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        initializeVM()
    }

    private func initializeVM() {
        itunesListVM.load()
        
        itunesListVM.updateList = { [weak self]() in
            DispatchQueue.main.async {
                if let itunes = self?.itunesListVM.itunes {
                    self?.adapter.set(list: itunes)
                    itunes.forEach({(data) in
                        print("from view: trackId: \(data.trackId)")
                    })
                }
            }
        }
    }
}

