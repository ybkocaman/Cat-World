//
//  BreedRowView.swift
//  Cat World
//
//  Created by Yusuf Burak on 25/04/2024.
//

import SwiftUI

struct BreedRowView: View {
    
    var breed: Breed
    
    var body: some View {
                ScrollView {
                    HStack {
                        if breed.referenceImageId != nil {
                            AsyncImage(url: URL(string: "https://cdn2.thecatapi.com/images/\(breed.referenceImageId!).jpg")) { image in
                                image
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                            } placeholder: {
                                ProgressView()
                                    .frame(width: 100, height: 100)
                            }
                        } else {
                            Image(systemName: "photo")
                                .resizable()
                                .scaledToFit()
                                .foregroundColor(.gray)
                                .frame(width: 100, height: 100)
                        }
                        VStack(alignment: .leading) {
                            Text(breed.name)
                                .font(.title3.bold())
                            Text(breed.description)
                                .font(.subheadline)
                                .lineLimit(2)
                                .multilineTextAlignment(.leading)
                        }
                        .padding(.leading)
                        .foregroundStyle(.black)
                    }
            }
    }
}

#Preview {
    BreedRowView(breed: Breed.example)
}
