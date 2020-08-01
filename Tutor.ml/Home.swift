//
//  Home.swift
//  Tutor.ml
//
//  Created by Bhargav Annem on 7/31/20.
//  Copyright © 2020 Bhargav Annem. All rights reserved.
//

import UIKit
import MapKit

class Home: UIViewController {
    @IBOutlet weak var Map: MKMapView!
    
    let manager = CLLocationManager()
    
    override func viewDidLoad() {
//        let initialLocation = CLLocation(latitude: <#T##CLLocationDegrees#>, longitude: <#T##CLLocationDegrees#>)
        super.viewDidLoad()
        manager.requestLocation()

        // Do any additional setup after loading the view.
    }
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
