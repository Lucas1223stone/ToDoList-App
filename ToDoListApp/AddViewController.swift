//
//  AddViewController.swift
//  ToDoListApp
//
//  Created by Mark Norton on 12/1/15.
//  Copyright © 2015 Alex Norton. All rights reserved.
//

import UIKit

class AddViewController: UIViewController, UITextViewDelegate {
    
    var delegate: ListDelegate?
    
    var textBox: UITextView? = nil
    
    override func viewDidLoad() {
        self.view.backgroundColor = UIColor.whiteColor()
        
        self.navigationItem.rightBarButtonItem =
            UIBarButtonItem(title: "Done", style: .Done, target: self, action: "done:")
        
        var v  = UIView(frame: CGRect(x: 20, y: 100, width: 300, height: 500))
        
        var f: CGFloat = 0.5
        
        v.transform = CGAffineTransformMakeRotation(0.5 * CGFloat(M_PI))
        v.backgroundColor = UIColor.greenColor()
        view.addSubview(v)
        
        
        textBox = UITextView(frame: v.bounds.offsetBy(dx: 10, dy: 10))
        
        textBox!.backgroundColor = UIColor.orangeColor()
        
        textBox!.delegate = self
       
        self.view.addSubview(textBox!)
    }
    
    
    func done(selector: UIBarButtonItem) {
        delegate?.addToList(textBox!.text)
        self.navigationController?.popViewControllerAnimated(true)
    }

}
