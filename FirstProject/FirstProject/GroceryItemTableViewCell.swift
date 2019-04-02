//
//  GroceryItemTableViewCell.swift
//  FirstProject
//
//  Created by Gregory Steenhagen on 4/1/19.
//  Copyright © 2019 Gregory Steenhagen. All rights reserved.
//

import UIKit

class GroceryItemTableViewCell: UITableViewCell {
    @IBOutlet weak var groceryText: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func deleteButtonPressed(_ sender: Any) {
        self.removeFromSuperview();
    }
    
    func setText(text: String?){
//        groceryText.text = "test";
    }
}
