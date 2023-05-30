//
//  ContactListExtended.swift
//  ContactList
//
//  Created by Egor Kruglov on 26.05.2023.
//

import UIKit

final class ContactListExtendedViewController: UITableViewController {

    var contacts: [Contact]!

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        contacts.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        contacts[section].fullName
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "phoneCell", for: indexPath)
            
            var content = cell.defaultContentConfiguration()
            content.text = contacts[indexPath.section].phone
            content.image = UIImage(systemName: "phone.fill")
            
            cell.contentConfiguration = content
            
            
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "emailCell", for: indexPath)
            
            var content = cell.defaultContentConfiguration()
            content.text = contacts[indexPath.section].email
            content.image = UIImage(systemName: "envelope.fill")

            cell.contentConfiguration = content

            
            return cell
        }
    }

}
