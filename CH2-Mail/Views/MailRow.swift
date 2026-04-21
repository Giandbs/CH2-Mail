//
//  MailRow.swift
//  MailAppRemix
//
//  Created by Utari Dyani Laksmi on 05/04/26.
//

import SwiftUI

struct MailRow: View {
    var mail: Mail?
    var body: some View {
        HStack (spacing: 12) {
            Circle()
                .foregroundStyle(Color.blue)
                .frame(width: 8)
            
            RoundedRectangle(cornerRadius: 15)
                .fill(Color.gray.opacity(0.3))
                .frame(width: 50, height: 50)
                .overlay(
                    Text("PN")
                        .foregroundColor(.white)
                        .font(.subheadline)
                )
            
            VStack (alignment: .leading) {
                
                HStack {
                    //Text(mail.sender)
                    Text(mail?.sender ?? "")
                        .fontWeight(.semibold)
                    
                    Spacer()
                    
                    HStack
                    {
                        Text("15/04/26")
                        Image(systemName: "chevron.right.circle")
                    }
                    .foregroundColor(.gray)
                    .font(.caption)
                }

                
                Text(mail?.body ?? "")
                    .lineLimit(2)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
                
        }
        .padding(.horizontal)
        
    }
}


#Preview {
    MailRow()
}
