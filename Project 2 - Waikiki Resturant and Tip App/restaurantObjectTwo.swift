//
//  restaurantObjectTwo.swift
//  Project 2 - Waikiki Resturant and Tip App
//
//  Created by Jillian Shirai on 4/20/26.
//

import UIKit
import MapKit
class restaurantObjectTwo: NSObject, MKAnnotation {
    
    let resturantTitle: String?
    let coordinate: CLLocationCoordinate2D
    init(title: String, coordinate: CLLocationCoordinate2D )
    {
        self.resturantTitle = title
        self.coordinate = coordinate
        
        super.init()
        
        
    }
    
    var subtitle: String?
    {
        return resturantTitle
    }


}
