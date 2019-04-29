//
//  RecipeTableView.swift
//  nutriientapp
//
//  Created by Fauzi Fauzi on 29/04/19.
//  Copyright © 2019 Kelompok8. All rights reserved.
//

import UIKit

class RecipeTableView: UITableView, UITableViewDelegate, UITableViewDataSource {
    
    override func awakeFromNib() {
        self.delegate = self
        self.dataSource = self
    }
    
    override func numberOfRows(inSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        
        if(indexPath.section==0)//the section you want )
            {
                switch indexPath.row {
                case 0:
                    self.rowHeight = 60
                case 1:
                    self.rowHeight = 225
                default:
                    self.rowHeight = 160
                    
                }
            } else {
            self.rowHeight = 160
        }
            return self.rowHeight
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = indexPath.row
        
        
        if row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "RecipeSearchCell") as! RecipeSearchCell
            
            return cell
        } else if row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "RecipeFeatureCell") as! RecipeFeatureCell
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "RecipeFishCell") as! RecipeFishCell
            return cell
        }
    }
    
    
    

    

}
