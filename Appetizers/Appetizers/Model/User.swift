//
//  User.swift
//  Appetizers
//
//  Created by Adwait Barmase on 24/04/24.
//

import Foundation

struct User: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthdate = Date()
    var extraNapkins = false
    var frequentRefills = false
    
}
