//
//  ContentView.swift
//  webhook-test
//
//  Created by Jason Rich Darmawan Onggo Putra on 10/07/23.
//

import SwiftUI

struct ContentView: View {
    private(set) var text: String = "Hello, world!"

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text(L10n.ContentView.helloWorld)
                .foregroundColor(Asset.textPrimary.swiftUIColor)
            Text(L10n.ContentView.bananasOwner(5, "Jake"))
            Text(L10n.BookView.bookName)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
