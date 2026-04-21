//
//  FirstScreenView.swift
//  MailAppRemix
//
//  Created by Utari Dyani Laksmi on 05/04/26.
//

import SwiftUI

struct FirstScreenView: View {
    //make the instance
    let mail1 = Mail(subject: "Hello world", body: "challenge 2", sender: "Martin", isRead: false)
    let mail2 = Mail(subject: "meow meow", body: "challenge 2", sender: "Cat", isRead: true)
    let mail3 = Mail(subject: "Hell0 hi", body: "challenge 2", sender: "Cayden", isRead: false)
    let mail4 = Mail(subject: "Hello world", body: "challenge 2", sender: "Luc", isRead: true)
    
    var body: some View {
        //store it somewhere
        let mails: [Mail] = [mail1, mail2, mail3, mail4]
        
        NavigationStack {
            VStack {
                Text("Updated Just Now")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    .foregroundColor(Color.gray)
                
                
                // scroll view for categories
                Categories()
                
                
                // list of mails
                ScrollView {
                    LazyVStack(spacing: 0) {
                        Section {
                            ForEach(mails) { mail in
                                NavigationLink {
                                    SecondScreenView()
                                } label: {
                                    MailRow(mail: mail)
                                        .padding(.vertical, 8)
                                }
                                .buttonStyle(.plain)
                            }
                            
                        } header: {
                            Text("Older Messages")
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.horizontal)
                                .padding(.top, 8)
                        }
                    }
                }
                

                
            }
            .frame(maxHeight: .infinity, alignment: .top)
            .navigationTitle("Mailboxes")
            .toolbar {
                // to separate the buttons, use toolbar spacer
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Group Mail List", systemImage: "pencil.and.list.clipboard") {}
                }
                ToolbarSpacer(.fixed, placement: .topBarTrailing)
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                    } label: {
                        Image(systemName: "square.and.pencil")
                    }
                }
                
                
                // bottom toolbar
                DefaultToolbarItem(kind: .search, placement: .bottomBar)
                ToolbarSpacer(.flexible, placement: .bottomBar)
                ToolbarItem(placement: .bottomBar) {
                    Button("Group List", systemImage: "person.3.sequence") { }
                }
                
                
            }
            .searchable(text: .constant(""), prompt: "Search" )
        }
    }
}


#Preview {
    FirstScreenView()
}
