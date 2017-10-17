//
//  BirdFile.swift
//  MissouriBirder's
//
//  Created by Kankanala,Nikhil Reddy on 10/16/17.
//  Copyright © 2017 Kankanala,Nikhil Reddy. All rights reserved.
//


import Foundation
import CoreLocation
import UIKit


class Bird:Equatable,CustomStringConvertible{
    
    var name:String!
    var latinName:String!
    var location:CLLocationCoordinate2D!
    var date:DateComponents!
    var numberOfSightings:Int!
    var image:UIImage!
    
    init(name:String, latinName:String, location:CLLocationCoordinate2D, date:DateComponents, numberOfSightings:Int, image:UIImage){
        self.name = name
        self.latinName = latinName
        self.location = location
        self.date = date
        self.numberOfSightings = numberOfSightings
        self.image = image
    }
    
    func updateNumSightings(sightings:Int){
        numberOfSightings! += 1
    }
    
    static func ==(lhs: Bird, rhs: Bird) -> Bool {
        return true
    }
    
    var description:String{
        
        return ""
    }
    
}

var bird1 = Bird(name: "Northern-Flicker", latinName: "Colaptes auratus", location: CLLocationCoordinate2D(latitude: 21.0,longitude: 46.0), date: DateComponents(year: 2003, month: 08, day:11, hour: 8, minute: 58), numberOfSightings: 21, image: #imageLiteral(resourceName: "Northern-Flicker"))

var bird2 = Bird(name: "Northern-Mockingbird", latinName: "Colaptes auratus", location: CLLocationCoordinate2D(latitude: 36.0,longitude: 50.0), date: DateComponents(year: 2001, month: 07, day:10, hour: 10, minute: 12), numberOfSightings: 26, image: #imageLiteral(resourceName: "Northern-Mockingbird") )

var bird3 = Bird(name: "Ladder-backed-Woodpecker", latinName: "Colaptes auratus", location: CLLocationCoordinate2D(latitude: 18.0,longitude: 41.0), date: DateComponents(year: 2005, month: 02, day:15, hour: 8, minute: 34), numberOfSightings: 25, image: #imageLiteral(resourceName: "Ladder-backed-Woodpecker"))

var bird4 = Bird(name: "q", latinName: "Colaptes auratus", location: CLLocationCoordinate2D(latitude: 17.0,longitude: 45.0), date: DateComponents(year: 2006, month: 01, day:18, hour: 1, minute: 16), numberOfSightings: 29, image: #imageLiteral(resourceName: "q") )

var bird5 = Bird(name: "w", latinName: "Colaptes auratuss", location: CLLocationCoordinate2D(latitude: 31.0,longitude: 44.0), date: DateComponents(year: 2005, month: 02, day:15, hour: 8, minute: 34), numberOfSightings: 25, image: #imageLiteral(resourceName: "w"))

var bird6 = Bird(name: "e", latinName: "Colaptes auratuss", location: CLLocationCoordinate2D(latitude: 30.0,longitude: 50.0), date: DateComponents(year: 2009, month: 05, day:21, hour: 3, minute: 34), numberOfSightings: 28, image: #imageLiteral(resourceName: "e"))

var bird7 = Bird(name: "r", latinName: "Colaptes auratus", location: CLLocationCoordinate2D(latitude: 22.0,longitude: 55.0), date: DateComponents(year: 2007, month: 11, day:29, hour: 10, minute: 55), numberOfSightings: 27, image: #imageLiteral(resourceName: "r"))

var bird8 = Bird(name: "t", latinName: "StColaptes auratus", location: CLLocationCoordinate2D(latitude: 36.0,longitude: 45.0), date: DateComponents(year: 2005, month: 06, day:19, hour: 5, minute: 34), numberOfSightings: 25, image: #imageLiteral(resourceName: "t"))

var bird9 = Bird(name: "y", latinName: "Colaptes auratusis", location: CLLocationCoordinate2D(latitude: 31.0,longitude: 49.0), date: DateComponents(year: 2000, month: 11, day:19, hour: 4, minute: 33), numberOfSightings: 25, image: #imageLiteral(resourceName: "y"))



struct County{
    var name:String
    
    var birds:[Bird]
}

struct State{
    static var counties:[County] = [County(name: "Clark", birds: [bird1,bird4,bird5]), County(name: "Clay", birds: [bird2,bird6,bird7]), County(name: "Norton", birds: [bird3,bird8,bird9])]
}

