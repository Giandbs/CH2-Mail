//
//  FirstScreenView.swift
//  MailAppRemix
//
//  Created by Utari Dyani Laksmi on 05/04/26.
//

import SwiftUI

struct SecondScreenView: View {
    @Environment(\.dismiss) private var dismiss

    //make the instance
    let mail1 = Mail(subject: "Hello world", body: "challenge 2", sender: "Martin", isRead: false)
    
    var body: some View {
        MailRow(mail: mail1)
            .navigationTitle("Mail")
            .navigationBarBackButtonHidden(true)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Back", systemImage: "arrow.left") {
                        dismiss()
                    }
                }
            }
    }
}

#Preview {
    SecondScreenView()
}
