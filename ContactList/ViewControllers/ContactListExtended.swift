//
//  ContactListExtended.swift
//  ContactList
//
//  Created by Egor Kruglov on 26.05.2023.
//

import UIKit

final class ContactListExtended: UITableViewController {

    var contacts: [Contact]!

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return contacts.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let title = contacts[section].fullName
        return title
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row % 2 == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "phoneCell", for: indexPath)
            cell.textLabel?.text = contacts[indexPath.section].phone
            
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "emailCell", for: indexPath)
            cell.textLabel?.text = contacts[indexPath.section].email
            
            return cell
        }
    }

}
