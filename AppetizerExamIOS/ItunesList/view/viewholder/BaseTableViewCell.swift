//
//  BaseTableViewCell.swift
//  AppetizerExamIOS
//
//  Created by David Andrew Francis Duldulao on 05/03/2019.
//  Copyright © 2019 AppetizerIOSCodingExam. All rights reserved.
//

import UIKit

class BaseTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override func prepareForReuse() {
        recycle()
    }

    // MARK: need to be overriden on the child classes
    func bind(data: ITunes) {
        
    }
    
    // MARK: need to be overriden on the child classes
    func recycle() {
        
    }
}
