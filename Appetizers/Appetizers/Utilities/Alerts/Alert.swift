//
//  Alert.swift
//  Appetizers
//
//  Created by Adwait Barmase on 16/04/24.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    //Mark - Network Alerts
    static let invalidData = AlertItem(title: Text("Server Error"),
                                       message: Text("The data received from the server was invalid. Please contact support."),
                                       dismissButton: .default(Text("Ok")))
    
    static let invalidResponse = AlertItem(title: Text("Server Error"),
                                       message: Text("Invalid response from the server. Please try again or contact support."),
                                       dismissButton: .default(Text("Ok")))
    
    static let invalidURL = AlertItem(title: Text("Server Error"),
                                       message: Text("There was an issue connecting to the server. Please contact support."),
                                       dismissButton: .default(Text("Ok")))
    
    static let unableToComplete = AlertItem(title: Text("Server Error"),
                                       message: Text("Unable to complete at this time. Please check your internet connection."),
                                       dismissButton: .default(Text("Ok")))
    
    //Mark - Account Alerts
    
    static let invalidForm = AlertItem(title: Text("Invalid Form"),
                                       message: Text("Please ensure all the fields in the form are filled."),
                                       dismissButton: .default(Text("Ok")))
    
    static let invalidEmail = AlertItem(title: Text("Invalid Email"),
                                       message: Text("Please ensure your email is correct."),
                                       dismissButton: .default(Text("Ok")))
    
    static let userSaveSuccess = AlertItem(title: Text("Profile saved!"),
                                       message: Text("Your profile information was successfully saved."),
                                       dismissButton: .default(Text("Ok")))
    
    static let invalidUserData = AlertItem(title: Text("Profile Error!"),
                                       message: Text("There was an saving or retrieving your profile."),
                                       dismissButton: .default(Text("Ok")))
}
