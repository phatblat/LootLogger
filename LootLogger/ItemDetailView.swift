//
//  ItemDetailView.swift
//  LootLogger
//
//  Created by Ben Chatelain on 8/25/19.
//  Copyright © 2019 Big Nerd Ranch. All rights reserved.
//

import SwiftUI

struct ItemDetailView: View {
    var body: some View {
        VStack {
            FormField(title: "Name", placeholder: "", value: .constant("Item Name"))
            FormField(title: "Name", placeholder: "", value: .constant("Serial"))
            FormField(title: "Name", placeholder: "", value: .constant("Value"))
        }
        .padding()
    }
}

struct FormField: View {
    let title: String
    let placeholder: String
    @Binding var value: String

    var body: some View {
        HStack {
            Text(title)
            TextField("placeholder", text: $value)
        }
    }
}

struct ItemDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ItemDetailView()
    }
}
