//
//  ContentView.swift
//  GraphQLSample
//
//  Created by Kazuki Kubo on 2023/12/11.
//

import SwiftUI
import API

struct ContentView: View {
    
    private var client = APIClient(endpointURL: "https://swapi-graphql.netlify.app/.netlify/functions/index")
    @State private var titles: [String] = []
    
    var body: some View {
        List(titles, id: \.self) { title in
            Text(title)
        }
        .onAppear(perform: {
            Task {
                titles = try await client.allTitles()
            }
        })
    }
}

#Preview {
    ContentView()
}
