//
//  Home.swift
//  Tutor.ml
//
//  Created by Bhargav Annem on 7/31/20.
//  Copyright © 2020 Bhargav Annem. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class Home: UIViewController {
    @IBOutlet weak var Map: MKMapView!
    fileprivate let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpMapView()
    }
    
    func setUpMapView(){
        Map.showsUserLocation = true
        Map.showsCompass = true
        Map.showsBuildings = true
        Map.showsScale = true
        currentLocation()
    }
    
    func currentLocation() {
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        if #available(iOS 11.0, *) {
            locationManager.showsBackgroundLocationIndicator = true
        }
        else{}
        locationManager.startUpdatingLocation()
    }
}

extension Home: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let location = locations.last! as CLLocation
        let currentLocation = location.coordinate
        let coordinateRegion = MKCoordinateRegion(center: currentLocation, latitudinalMeters: 800, longitudinalMeters: 800)
        Map.setRegion(coordinateRegion, animated: true)
        locationManager.stopUpdatingLocation()
    }
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error.localizedDescription)
    }
}
