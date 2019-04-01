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
    @IBOutlet weak var groceryTextView: UITextView!
    @IBOutlet weak var clearButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        groceryTextView.delegate = self
        clearButton.isHidden = true;
    }
    
    @IBAction func addItem(_ sender: Any) {
        if let text = textField.text, text != "" {
            groceryTextView.text.append("\(text)\n")
            textField.text = ""
            textField.resignFirstResponder()
            clearButton.isHidden = false;
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        textField.resignFirstResponder()
    }
    
    @IBAction func clearList(_ sender: Any) {
        groceryTextView.text = "";
        clearButton.isHidden = true;
    }
    
    func textViewShouldBeginEditing(_ textView: UITextView) -> Bool {
        textField.resignFirstResponder()
        return false
    }
}
