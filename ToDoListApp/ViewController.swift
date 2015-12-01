//
//  ViewController.swift
//  ToDoListApp
//
//  Created by Mark Norton on 12/1/15.
//  Copyright © 2015 Alex Norton. All rights reserved.
//

import UIKit

class ViewController: UITableViewController, ListDelegate {

    var array = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.rightBarButtonItem =
            UIBarButtonItem(barButtonSystemItem: .Add, target: self, action: "addClicked:")
        
        self.tableView.registerClass(UITableViewCell.self , forCellReuseIdentifier: "cell")
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    override func tableView(tableView: UITableView,
        cellForRowAtIndexPath indexPath: NSIndexPath)
        -> UITableViewCell {
            
        let cell = tableView.dequeueReusableCellWithIdentifier("cell")!
        cell.textLabel!.text = array[indexPath.row]
        return cell
    }
    
    func addClicked(sender: UIBarButtonItem) {
        let vc = AddViewController()
        vc.delegate = self
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func addToList(str: String) {
        array.append(str)
        tableView.reloadData()
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

