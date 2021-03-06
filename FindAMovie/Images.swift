//
//  Images.swift
//  FindAMovie
//
//  Created by Paul on 11/06/2015.
//  Copyright (c) 2015 Hetic. All rights reserved.
//

import Foundation

/**
*  Images class
*/
class Images: NSObject {
    
    var list: [Image] = [Image]()
    
    /**
    Initialize a new images object
    
    - parameter imagesDictionary: [String: AnyObject]
    */
    init(imagesDictionary: [String: AnyObject]) {
        
        let images = imagesDictionary["backdrops"] as! [[String:AnyObject]]
        
        let id = 1
        
        for image in images {
            
            var id = id
            let file_path = image["file_path"] as? String
            let width = image["width"] as? Int
            let height = image["height"] as? Int
            
            list.append(Image(id: id, file_path: file_path, width: width, height: height))
            id++
        }
        
    }
    
    
}