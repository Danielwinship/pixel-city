//
//  DroppablePin.swift
//  Pixel-City
//
//  Created by Daniel Winship on 1/19/18.
//  Copyright © 2018 Daniel Winship. All rights reserved.
//

import Foundation
import  MapKit

class DroppablePin: NSObject, MKAnnotation{
    
   dynamic var coordinate: CLLocationCoordinate2D
    var identifier: String
    
     init(coordinate: CLLocationCoordinate2D, identifier: String) {
        self.coordinate = coordinate
        self.identifier = identifier
        super.init()
    }
    
}
