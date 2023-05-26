//
//  contactList.swift
//  ContactList
//
//  Created by Egor Kruglov on 26.05.2023.
//

import UIKit

final class ContactList: UITableViewController {
    
    let contacts = Contact.getContactList()

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "conctactCell", for: indexPath)
        cell.textLabel?.text = contacts[indexPath.row].fullName
        
        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailsVC = segue.destination as? ContactDetails else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        detailsVC.contact = contacts[indexPath.row]
    }
    
}
