//
//  ViewController.swift
//  FirstProject
//
//  Created by Gregory Steenhagen on 3/31/19.
//  Copyright © 2019 Gregory Steenhagen. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet var groceryTable: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        clearButton.isHidden = true;
    }
    
    @IBAction func addItem(_ sender: Any) {
        if let text = textField.text, text != "" {
            //TODO create new table view item and delete button and add append to table
            let newItem = GroceryItemTableViewCell();
            newItem.setText(text:text);
            groceryTable.addSubview(newItem);d
            
            textField.text = ""
            textField.resignFirstResponder()
            clearButton.isHidden = false;
        }
    }
    
    @objc func deleteItem(_ sender:UIButton!){
        //TODO delete grocery item
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        textField.resignFirstResponder()
    }
    
    @IBAction func clearList(_ sender: Any) {
        //TODO remove all grocery items
        clearButton.isHidden = true;
    }
    
    func textViewShouldBeginEditing(_ textView: UITextView) -> Bool {
        textField.resignFirstResponder()
        return false
    }
}
