//
//  Mail.swift
//  MailAppRemix
//
//  Created by Vania Radmila Alfitri on 17/04/26.
//
import SwiftUI

struct Mail: Identifiable {
    var id = UUID()
    var subject: String
    var body: String
    var sender: String
    var isRead: Bool
    
    func send() {
        //send email
    }
}
