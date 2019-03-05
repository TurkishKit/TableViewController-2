//
//  TableViewCell.swift
//  TableviewController 2
//
//  Created by Ege Sucu on 2019-02-22.
//  Copyright © 2019 TurkishKit. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var resim: UIImageView!
    @IBOutlet weak var isim: UILabel!
    @IBOutlet weak var yas: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
