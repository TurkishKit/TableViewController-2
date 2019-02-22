//
//  ArkadasTableViewCell.swift
//  TableviewController 1
//
//  Created by Ege Sucu on 2019-02-22.
//  Copyright © 2019 Ege Sucu. All rights reserved.
//

import UIKit

class ArkadasTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var arkadasResmi: UIImageView!
    @IBOutlet weak var arkadasIsmi: UILabel!
    @IBOutlet weak var arkadasYasi: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
