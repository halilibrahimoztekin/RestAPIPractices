//
//  WebServices.swift
//  RestAPIPractices
//
//  Created by Halil İbrahim Öztekin on 3.11.2021.
//

import Foundation
class WebServices{
    var petitions = [Petition]()
    
    func GetData(urlString : String)->[Petition]{
        if let url = URL(string: urlString) {
            if let data = try? Data(contentsOf: url) {
                // we're OK to parse!
                let decoder = JSONDecoder()
                if let jsonPetitions = try? decoder.decode(Petitions.self, from: data) {
                    petitions = jsonPetitions.results
                }
            }
        }
        return self.petitions
    }
    
}
