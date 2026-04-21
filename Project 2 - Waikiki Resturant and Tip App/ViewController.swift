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
    
    var restaurantArray = ["Maguro Brothers", "Marugame Udon", "Eggs 'n Things", "Liliha Bakery ⭐️⭐️⭐️⭐️", "Gyu-Kaku Japanese BBQ ⭐️⭐️⭐️", "Doraku Sushi ⭐️⭐️⭐️⭐️"]
    var restaurantDetailsArray = ["Shoyu Onion Ahi Poke - ⭐️⭐️⭐️⭐️", "Beef Udon - ⭐️⭐️⭐️", "Choco Chip Pancakes ⭐️⭐️⭐️⭐️", "Kimchee Fried Rice - ⭐️⭐️⭐️⭐️", "Sweet Soy Toro Beef - ⭐️⭐️⭐️", "Brownie Tempura -⭐️⭐️⭐️⭐️"]
    
   // let myImages: [UIImage] = [Maguro Brothers]
    //saying it can't find it in scope?
    
    let centeredLocation = CLLocation(latitude: 21.279363, longitude: -157.829224)
    let regionRadius: CLLocationDistance = 1000
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let text = restaurantArray[indexPath.row]
        cell.detailTextLabel?.text = restaurantDetailsArray[indexPath.row]
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
        let restaurantTwo = restaurantObjectTwo(title: "Marugame Udon", coordinate: CLLocationCoordinate2D(latitude: 21.279777, longitude: -157.825888))
        let restaurantThree = restaurantObjectThree(title: "Eggs 'n Things", coordinate: CLLocationCoordinate2D(latitude: 21.274882, longitude: -157.824238))
        let restaurantFour = restaurantObjectFour(title: "Liliha Bakery", coordinate: CLLocationCoordinate2D(latitude: 21.278281, longitude: -157.826583))
        let restaurantFive = restaurantObjectFive(title: "Gyu-Kaku Japanese BBQ", coordinate: CLLocationCoordinate2D(latitude: 21.280537, longitude: -157.829260))
        let restaurantSix = restaurantObjectSix(title: "Doraku Sushi", coordinate: CLLocationCoordinate2D(latitude: 21.278756, longitude: -157.828951))
        
        waikikiMapView.addAnnotation(restaurantOne)
        waikikiMapView.addAnnotation(restaurantTwo)
        waikikiMapView.addAnnotation(restaurantThree)
        waikikiMapView.addAnnotation(restaurantFour)
        waikikiMapView.addAnnotation(restaurantFive)
        waikikiMapView.addAnnotation(restaurantSix)
    }
    func centerMapOnLocation (location: CLLocation)
    {
        let coordinateRegion = MKCoordinateRegion(
            center: location.coordinate,
            latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
        waikikiMapView.setRegion(coordinateRegion, animated: true)
    }
    
}
