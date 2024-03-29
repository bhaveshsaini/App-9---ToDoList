//
//  ViewController.swift
//  App 9 - ToDoList
//
//  Created by Bhavesh Saini on 9/11/19.
//  Copyright © 2019 Bhavesh Saini. All rights reserved.
//

import UIKit

class ToDoListViewController: UITableViewController {

    let itemArray = ["Car Wash" , "Room Clean" , "Homework", "4"]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    //MARK - Tableview Datasource  Methods
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }

    
    //MARK - Tableview delegate methods
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        if(tableView.cellForRow(at: indexPath)?.accessoryType != .checkmark)
        {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        else
        {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
}

