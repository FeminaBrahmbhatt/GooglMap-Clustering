//
//  ViewController.swift
//  MapKit Starter
//
//  Created by Femina Brahmbhatt on 7/25/17.
//  Copyright © 2017 Femina Brahmbhatt. All rights reserved.
//

import MapKit

class Place: NSObject {
    static let sharedinstance = Place(title: "", subtitle: "", coordinate: CLLocationCoordinate2DMake(0.0, 0.0))
    
    var title: String?
    var subtitle: String?
    var coordinate: CLLocationCoordinate2D
    
    init(title: String?, subtitle: String?, coordinate: CLLocationCoordinate2D) {
        self.title = title
        self.subtitle = subtitle
        self.coordinate = coordinate
    }
    
    func getPlaces() -> [Place] {
        guard let path = Bundle.main.path(forResource: "Places", ofType: "plist"), let array = NSArray(contentsOfFile: path) else { return [] }
        
        var places = [Place]()
        
        for item in array {
            let dictionary = item as? [String : Any]
            let title = dictionary?["title"] as? String
            let subtitle = dictionary?["description"] as? String
            let latitude = dictionary?["latitude"] as? Double ?? 0, longitude = dictionary?["longitude"] as? Double ?? 0
            
            let place = Place(title: title, subtitle: subtitle, coordinate: CLLocationCoordinate2DMake(latitude, longitude))
            places.append(place)
        }
        
        return places as [Place]
    }
    
    func insertplace(title: String?, subtitle: String?, coordinate: CLLocationCoordinate2D){

        let path = Bundle.main.path(forResource: "Places", ofType: "plist")
        let array1 = NSArray(contentsOfFile: path!)
        let DataArray = NSMutableArray(array: array1!)

        let Placedict: [String: Any] = ["title": title ?? "noplace", "description": subtitle ?? "noplace","latitude":coordinate.latitude ,"longitude":coordinate.longitude]
        
        //add dictionary to array
        DataArray.add(Placedict)
        
        //update the plist
        DataArray.write(toFile: (path)!, atomically: true)
    }
}

extension Place: MKAnnotation { }
