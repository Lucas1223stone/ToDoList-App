//
//  AddViewController.swift
//  ToDoListApp
//
//  Created by Mark Norton on 12/1/15.
//  Copyright © 2015 Alex Norton. All rights reserved.
//

import UIKit

class AddViewController: UIViewController, UITextViewDelegate {
    
    var delegate: ListDelegate? = nil
    
    var textBox: UITextView? = nil
    
    override func viewDidLoad() {
        self.view.backgroundColor = UIColor.whiteColor()
        
        self.navigationItem.rightBarButtonItem =
            UIBarButtonItem(title: "Done", style: .Done, target: self, action: "done:")
        
        textBox = UITextView(frame: CGRect(x: 0, y: 0, width: 300, height: 500))
        
        textBox!.backgroundColor = UIColor.orangeColor()
        
        textBox!.delegate = self
       
        self.view.addSubview(textBox!)
    }
    
    
    func done(selector: UIBarButtonItem) {
        delegate?.addToList(textBox!.text)
        self.navigationController?.popViewControllerAnimated(true)
    }

}
