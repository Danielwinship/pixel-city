//
//  Constants.swift
//  Pixel-City
//
//  Created by Daniel Winship on 1/21/18.
//  Copyright © 2018 Daniel Winship. All rights reserved.
//

import Foundation

let apiKey = "bf5284a38136f72c9cf5af7cd0112f6d"


func flickrURL(apiKey key: String, withAnnotation annotation: DroppablePin, andNumberOfPhotos number: Int) -> String {
    
    let url = "https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=\(apiKey)&lat=\(annotation.coordinate.latitude)&lon=\(annotation.coordinate.longitude)&radius=1&radius_units=mi&per_page=\(number)&format=json&nojsoncallback=1"
    
    return url
}




