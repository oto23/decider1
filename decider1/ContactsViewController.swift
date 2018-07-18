//
//  contactscontroller.swift
//  decider1
//
//  Created by Nika Talakhadze on 7/17/18.
//  Copyright © 2018 None. All rights reserved.
//

import Foundation
import UIKit

class ContactsViewController: UITableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // 1
        return 10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // 2
        let cell = tableView.dequeueReusableCell(withIdentifier: "listNotesTableViewCell", for: indexPath)
        cell.textLabel?.text = "Cell Row: \(indexPath.row) Section: \(indexPath.section)"
        
        return cell
    }
}
