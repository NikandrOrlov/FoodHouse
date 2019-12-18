//
//  FoodViewController.swift
//  FoodHouse
//
//  Created by Nikandr on 12/16/19.
//  Copyright © 2019 Nikandr. All rights reserved.
//

import Foundation
import UIKit
import WebKit


class FoodViewController: UIViewController {
    
    @IBOutlet weak var foodTableView: UITableView!
    
    let data = DataBase.dataBase
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        foodTableView.delegate = self
        foodTableView.dataSource = self
        
        foodTableView.register(UINib(nibName: "FoodTableViewCell", bundle: nil), forCellReuseIdentifier: "FoodTableViewCell")
    }
}

extension FoodViewController: UITableViewDelegate {
    
}

extension FoodViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataBase.dataBase.imageDataBase.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "FoodTableViewCell", for: indexPath) as! FoodTableViewCell
        
        cell.imgFood.imageFromServerURL(urlString: data.imageDataBase[indexPath.row], PlaceHolderImage: UIImage(named: "foodIcon")!)
        cell.lblContext.text = data.contextDataBase[indexPath.row]
        
        return cell
    }
}
