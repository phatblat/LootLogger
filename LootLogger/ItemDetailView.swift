//
//  ItemDetailView.swift
//  LootLogger
//
//  Created by Ben Chatelain on 8/25/19.
//  Copyright © 2019 Big Nerd Ranch. All rights reserved.
//

import SwiftUI

struct ItemDetailView: View {
    let item: Item

    var body: some View {
        Form {
            Section(header: Text("Information")) {
                HStack {
                    Text("ID")
                        .foregroundColor(.gray)
                    Spacer()
                    Text("\(item.id)")
                        .lineLimit(1)
                        .font(.subheadline)
                }
            }
            FormField(title: "Name", placeholder: "", value: .constant(item.name))
            FormField(title: "Serial", placeholder: "", value: .constant(item.serial))
            FormField(title: "Value", placeholder: "", value: .constant(item.itemValue))
        }
        .navigationBarTitle("Item Detail")
    }
}

struct FormField: View {
    let title: String
    let placeholder: String
    @Binding var value: String

    var body: some View {
        HStack {
            Text(title)
                .foregroundColor(.gray)
            TextField("placeholder", text: $value)
//                .textFieldStyle(RoundedBorderTextFieldStyle())
                    .multilineTextAlignment(.trailing)
        }
    }
}

struct ItemDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ItemDetailView(item: Item.random)
    }
}
