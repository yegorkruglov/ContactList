//
//  contactList.swift
//  ContactList
//
//  Created by Egor Kruglov on 26.05.2023.
//

import UIKit

final class ContactListViewController: UITableViewController {
    
    var contacts: [Contact]!

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "conctactCell", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        content.text = contacts[indexPath.row].fullName
        cell.contentConfiguration = content
        
        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailsVC = segue.destination as? ContactDetailsViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        detailsVC.contact = contacts[indexPath.row]
    }
    
}
