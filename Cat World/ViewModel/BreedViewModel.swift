//
//  BreedViewModel.swift
//  Cat World
//
//  Created by Yusuf Burak on 25/04/2024.
//

import Foundation

class BreedViewModel: ObservableObject {
    
    @Published var breeds = [Breed]()
    
    func fetchBreeds() {
        
        guard let url = URL(string: "https://api.thecatapi.com/v1/breeds") else { return }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            
            if let data = data {
                do {
                    let decoder = JSONDecoder()
                    let breeds = try decoder.decode([Breed].self, from: data)
                    
                    DispatchQueue.main.async {
                        self.breeds = breeds
                    }
                } catch {
                    print(error.localizedDescription)
                }
            } else if let error = error {
                print(error.localizedDescription)
            }
        }
        task.resume()
    }
    
}
