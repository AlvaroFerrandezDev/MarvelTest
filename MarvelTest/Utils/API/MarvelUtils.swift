//
//  MarvelUtils.swift
//  MarvelTest
//
//  Created by Álvaro Ferrández Gómez on 24/2/21.
//

import UIKit

struct MarvelUtils {
    public static var apiKey: String {
        guard let filePath = Bundle.main.path(forResource: "MarvelAPI", ofType: "plist") else {
            fatalError("Couldn't find file 'MarvelAPI.plist'.")
        }

        let plist = NSDictionary(contentsOfFile: filePath)
        guard let value = plist?.object(forKey: "PUBLIC_API_KEY") as? String else {
            fatalError("Couldn't find key 'PUBLIC_API_KEY' in 'MarvelAPI.plist'.")
        }
        return value
    }

    enum URL {
        static let main = "developer.marvel.com"
    }

    enum Endpoints {
        static let urlPopularMoviesList = "3/movie/popular"
    }
}
