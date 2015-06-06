//
//  Movies.swift
//  FindAMovie
//
//  Created by Paul on 06/06/2015.
//  Copyright (c) 2015 Hetic. All rights reserved.
//

import Foundation

import Foundation

class Movies: NSObject {
    
    var list: [Movie] = [Movie]()
    
    init(moviesDictionary: [String: AnyObject]) {
        
        self.list = [Movie]()
        
        let movies = moviesDictionary["results"] as! [[String:AnyObject]]
        
        for movie in movies {
            
            var id = movie["id"] as! Int
            var title = movie["title"] as! String
            var backdropPath = movie["backdrop_path"] as! String
            var overview = movie["overview"] as! String
            var originalTitle = movie["original_title"] as! String
            var releaseDate = movie["release_date"] as! String
            var posterPath = movie["poster_path"] as! String
            
            list.append(Movie(id: id, title: title, backdropPath: backdropPath, overview: overview, originalTitle: originalTitle, releaseDate: releaseDate, posterPath: posterPath))
            
        }
    }
    
}