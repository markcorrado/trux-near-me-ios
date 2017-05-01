//
//  TruxMapViewController.swift
//  TruxNearMe
//
//  Created by Mark Corrado on 5/1/17.
//  Copyright © 2017 Mark Corrado. All rights reserved.
//

import UIKit
import MapKit

class TruxMapViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {
    
    var mapView: MKMapView!
    let locationManager = CLLocationManager()

    override func viewDidLoad() {
        mapView = MKMapView()
        mapView.delegate = self
        locationManager.requestWhenInUseAuthorization()//se agrega permiso en info.plist
        mapView.showsUserLocation = true //fire up the method mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation)

        view = mapView
    }
}
