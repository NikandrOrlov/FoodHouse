//
//  FoodNavigationTableViewCell.swift
//  FoodHouse
//
//  Created by Nikandr on 12/16/19.
//  Copyright © 2019 Nikandr. All rights reserved.
//

import UIKit
import TinyConstraints
import FirebaseDatabase
import FirebaseStorage

class FoodTopBar: UIView {
    
    @IBOutlet var contentView: UIView!
    
    @IBOutlet weak var imgList: UIImageView!
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var imgUserAvatar: UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        viewDidLoad()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        viewDidLoad()
    }
    
    func viewDidLoad() {
        
        Bundle.main.loadNibNamed("FoodTopBar", owner: self, options: nil)
        
        contentView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(contentView)
        contentView.edgesToSuperview()
        
        let data = DataBase.dataBase
        
        imgUserAvatar.setBorder(width: 0.5, color: UIColor.gray)
        imgUserAvatar.createCircle()
    }
}


