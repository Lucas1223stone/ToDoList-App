//
//  ListDelegate.swift
//  ToDoListApp
//
//  Created by Mark Norton on 12/1/15.
//  Copyright © 2015 Alex Norton. All rights reserved.
//

import Foundation

@objc protocol ListDelegate {
    
    func addToList(str: String)
}