//
//  ListViewController.swift
//  Hungry
//
//  Created by Rebekkah Koo on 10/31/17.
//  Copyright © 2017 Melody park. All rights reserved.
//

import Foundation

import UIKit

class ListTableViewController: UITableViewController {
    
    var nameTextField: UITextField? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        PersistenceService.shared.fetchItems()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return PersistenceService.shared.count()
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellid", for: indexPath)
        
        // Configure the cell...
        let item = PersistenceService.shared.getItem(index: indexPath.row)
        
        cell.textLabel?.text = item.name
        
        return cell
    }
    
    @IBAction func btnAddAction(_ sender: Any) {
        let alert = UIAlertController(title: "New Item",
                                      message: "Add item",
                                      preferredStyle: .alert)
        
        let addAction = UIAlertAction(title: "Add",
                                       style: .default) { (action: UIAlertAction!) -> Void in
                                        
                                        guard let nameTextField = self.nameTextField?.text else { return }
                                        
                                        PersistenceService.shared.saveItem(name: nameTextField)
                                        
                                        self.tableView.reloadData()  // causes the table data source protocol methods to execute
        }
        
        let cancelAction = UIAlertAction(title: "Cancel",
                                         style: .default) { (action: UIAlertAction!) -> Void in
        }
        
        alert.addTextField { (textField) -> Void in
            textField.placeholder = "Name"
            self.nameTextField = textField
        }

        alert.addAction(addAction)
        alert.addAction(cancelAction)
        
        present(alert, animated: true, completion: nil)
    }
    
}
