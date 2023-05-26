//
//  TabBarController.swift
//  ContactList
//
//  Created by Egor Kruglov on 26.05.2023.
//

import UIKit

final class TabBarController: UITabBarController {
    
    let contacts = Contact.getContactList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        transferData()
    }
    
    private func transferData() {
        guard let viewControllers else { return }
        
        viewControllers.forEach {
            let navigationVC = $0 as? UINavigationController
            if let contactList = navigationVC?.topViewController as? ContactList {
                contactList.contacts = contacts
            } else if let contactListExtended = navigationVC?.topViewController as? ContactListExtended {
                contactListExtended.contacts = contacts
            }
        }
    }
    
}
