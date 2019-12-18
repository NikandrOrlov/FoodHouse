//
//  FoodTableViewCell.swift
//  FoodHouse
//
//  Created by Nikandr on 12/17/19.
//  Copyright © 2019 Nikandr. All rights reserved.
//

import UIKit

class FoodTableViewCell: UITableViewCell, FoodTableViewDelegate {

    @IBOutlet weak var imgFood: UIImageView!
    @IBOutlet weak var lblContext: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.setBorder(width: 0.5, color: UIColor(named: "foodBorderImage")!)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
}
