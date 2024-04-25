//
//  ContentView.swift
//  Cat World
//
//  Created by Yusuf Burak on 24/04/2024.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = BreedViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach(viewModel.breeds, id: \.self) { breed in
                        NavigationLink {
                            BreedDetailView(breed: breed)
                        } label: {
                            BreedRowView(breed: breed)
                        }
                    }
                }
            }
            .padding()
            .onAppear(perform: viewModel.fetchBreeds)
            .navigationTitle("Cat World")
        }
    }
}

#Preview {
    ContentView()
}
