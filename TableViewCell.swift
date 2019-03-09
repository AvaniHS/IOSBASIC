//
//  TableViewCell.swift
//  segue1
//
//  Created by APPLE-20 on 27/02/19.
//  Copyright © 2019 tableviewproj. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell{

    
    @IBOutlet weak var imageview: UIImageView!
    
    @IBOutlet weak var Label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
}
