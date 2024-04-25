//
//  BreedDetailView.swift
//  Cat World
//
//  Created by Yusuf Burak on 25/04/2024.
//

import SwiftUI

struct BreedDetailView: View {
    
    var breed: Breed
    
    var body: some View {
        ScrollView {
            if breed.referenceImageId != nil {
                AsyncImage(url: URL(string: "https://cdn2.thecatapi.com/images/\(breed.referenceImageId!).jpg")) { image in
                    image
                        .resizable()
                        .scaledToFit()
                } placeholder: {
                    ProgressView()
                }
            } else {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.gray)
            }
            
            VStack (alignment: .leading) {
                Text(breed.name)
                    .font(.largeTitle.bold())
                
                Divider()
                    .padding(.bottom)

                Text("Temperament")
                    .font(.title3.bold())
                Text(breed.temperament)
                    .multilineTextAlignment(.leading)
                
                Divider()
                    .padding(.vertical)

                Text("Brief Description")
                    .font(.title3.bold())
                Text(breed.description)
            }
            .padding()

        }
    }
}

#Preview {
    BreedDetailView(breed: Breed.example)
}
