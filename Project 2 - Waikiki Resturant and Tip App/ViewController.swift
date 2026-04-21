//
//  ViewController.swift
//  Project 2 - Waikiki Resturant and Tip App
//
//  Created by Jillian Shirai on 4/9/26.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var restaurantTableView: UITableView!
    
    @IBOutlet weak var waikikiMapView: MKMapView!
    
    var restaurantFoodImageData = [String]()
    
    var restaurantArray = ["Maguro Brothers ⭐️⭐️⭐️⭐️", "Marugame Udon ⭐️⭐️⭐️", "Eggs 'n Things ⭐️⭐️⭐️⭐️", "Liliha Bakery ⭐️⭐️⭐️⭐️", "Gyu-Kaku Japanese BBQ ⭐️⭐️⭐️", "Doraku Sushi ⭐️⭐️⭐️⭐️"]
    
    let centeredLocation = CLLocation(latitude: 21.279363, longitude: -157.829224)
    let regionRadius: CLLocationDistance = 10000
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let text = restaurantArray[indexPath.row]
        cell.textLabel?.text = text
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        centerMapOnLocation(location: centeredLocation)
        
        let restaurantOne = restaurantObjectOne(title: "Maguro Brothers", coordinate: CLLocationCoordinate2D(latitude: 21.279636, longitude: -157.828713))
        
        let restaurantTwo = restaurantObjectTwo(title: "Marugame Udon", coordinate: CLLocationCoordinate2D(latitude: 21.279651, longitude: -157.828693))
        let restaurantThree = restaurantObjectThree(title: "Eggs 'n Things", coordinate: CLLocationCoordinate2D(latitude: 21.274882, longitude: -157.824238))
        
        
    }
    func centerMapOnLocation (location: CLLocation)
    {
        let coordinateRegion = MKCoordinateRegion(
            center: location.coordinate,
            latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
        waikikiMapView.setRegion(coordinateRegion, animated: true)
    }
    
}
