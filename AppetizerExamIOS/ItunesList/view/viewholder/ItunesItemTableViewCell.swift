//
//  ItunesItemTableViewCell.swift
//  AppetizerExamIOS
//
//  Created by David Andrew Francis Duldulao on 05/03/2019.
//  Copyright © 2019 AppetizerIOSCodingExam. All rights reserved.
//

import UIKit
import SDWebImage

class ItunesItemTableViewCell: BaseTableViewCell {
    static let identifier: String = "ItunesItemTableViewCell"
    @IBOutlet weak var trackName: UILabel!
    @IBOutlet weak var genre: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var photo: UIImageView!
    
    override func bind(data: ITunes) {
        print("data binded")
        
        trackName.text = data.trackName
        genre.text = data.primaryGenreName
        price.text = "\(data.trackPrice)"
        photo.sd_setImage(with: URL(string: data.artworkUrl100!)) { (image, error, cacheType, url) in
            if let err = error {
                print("error loading photo!")
                return
            }
        }
    }
    
    override func recycle() {
        print("data not in view.... recycling")
        self.trackName.text = nil
        self.genre.text = nil
        self.price.text = nil
        self.photo.image = nil
    }
}
