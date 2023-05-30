//
//  DataStore.swift
//  ContactList
//
//  Created by Egor Kruglov on 26.05.2023.
//

import Foundation

final class DataStore {
    static let shared = DataStore()
    
    let names: Set<String> = ["Griffin",
                              "Moira",
                              "Roberto",
                              "Alison",
                              "Adeline",
                              "Rey",
                              "Hudson",
                              "Kalvin",
                              "Angelo",
                              "Jaylan"]
    let surnames: Set<String> = ["Wylie",
                                 "Hiatt",
                                 "Canady",
                                 "Troutman",
                                 "Dyer",
                                 "Schneider",
                                 "Stowe",
                                 "McNally",
                                 "Durant",
                                 "Graber"]
    let phones: Set<String> = ["+7 123 456 78 11",
                               "+7 123 456 78 22",
                               "+7 123 456 78 33",
                               "+7 123 456 78 44",
                               "+7 123 456 78 55",
                               "+7 123 456 78 66",
                               "+7 123 456 78 77",
                               "+7 123 456 78 88",
                               "+7 123 456 78 99",
                               "+7 123 456 78 00"]
    let emails: Set<String> = ["1@swiftbook.org", "2@swiftbook.org",
                               "3@swiftbook.org",
                               "4@swiftbook.org",
                               "5@swiftbook.org",
                               "6@swiftbook.org",
                               "7@swiftbook.org",
                               "8@swiftbook.org",
                               "9@swiftbook.org",
                               "10@swiftbook.org", ]
    
    
    private init() {}
}
