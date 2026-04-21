//
//  Categories.swift
//  MailAppRemix
//
//  Created by Utari Dyani Laksmi on 05/04/26.
//

import SwiftUI

struct Categories: View {
    
    @State private var selectedIndex: Int = 0
    let categories = [
        ("person", "All", Color.blue),
        ("cart", "Family", Color.green),
        ("message", "Office", Color.purple),
        ("megaphone", "Office", Color.pink),
        ("tray", "Office", Color.white)
    ]
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 10) {
                ForEach(categories.indices, id: \.self) { index in
                    Button {
                        selectedIndex = index
                    } label : {
                        HStack(spacing: 6) {
                            Image(systemName: categories[index].0)
                            
                            if selectedIndex == index {
                                Text(categories[index].1)
                            }
                        }
                        .fontWeight(
                            selectedIndex == index ? .semibold : .regular
                        )
                        .padding(.horizontal,
                                 selectedIndex == index ? 40 : 18)
                        .padding(.vertical, 12)
                        .background(
                            selectedIndex == index ? categories[index].2 : Color.gray.opacity(0.4)
                        )
                        .foregroundColor(
                            selectedIndex == index ? (index == 4 ? .black : .white) : .gray
                        )
                        .clipShape(Capsule())
                    }
                }
            }
        }
        .padding(.horizontal)
    }
}


#Preview {
    Categories()
}
