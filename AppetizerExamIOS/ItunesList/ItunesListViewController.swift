//
//  ViewController.swift
//  AppetizerExamIOS
//
//  Created by David Andrew Francis Duldulao on 01/03/2019.
//  Copyright © 2019 AppetizerIOSCodingExam. All rights reserved.
//

import UIKit

class ItunesListViewController: UIViewController, UITableViewDelegate/*, UITableViewDataSource*/ {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//    }
    
    @IBOutlet weak var tableItunes: UITableView!
    
    lazy var itunesListVM: ItunesListViewModel = {
       return ItunesListViewModel()
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        initializeVM()
        
        tableItunes.delegate = self
//        tableItunes.dataSource = self
    }

    private func initializeVM() {
        itunesListVM.load()
        
        itunesListVM.updateList = { [weak self]() in
            DispatchQueue.main.async {
                if let itunes = self?.itunesListVM.itunes {
                    itunes.forEach({(data) in
                        print("from view: trackId: \(data.trackId)")
                    })
                }
            }
        }
    }
}

