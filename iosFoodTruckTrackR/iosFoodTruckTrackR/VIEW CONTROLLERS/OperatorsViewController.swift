//
//  OperatorsViewController.swift
//  iosFoodTruckTrackR
//
//  Created by BrysonSaclausa on 10/15/20.
//

import UIKit
import MapKit
import CoreLocation

class OperatorsViewController: UIViewController, UITableViewDelegate, MKMapViewDelegate {
    
    var mockController: MockOperatorController! = nil
    let locationManager = CLLocationManager()
    var currentLocationStr = "Current location"
    
    
    //MARK: - IBOUTLETS
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var mapView: MKMapView!
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mockController = MockOperatorController()
        tableView.delegate = self
        tableView.dataSource = self
        mapView.delegate = self
        //setUpGGBridge()
        //setUpMap()
        setupAnnotations()
    }
    
    override func viewDidAppear(_ animated: Bool) {
           //determineCurrentLocation()
       }
    
    //MARK: - MAP

    
    func setupAnnotations() {
        
        let truck1 = CLLocationCoordinate2D(latitude: 36.129810, longitude: -115.296100)
        let truck1Annotation = Landmark(coordinate: truck1, name: "Corndogs On The Run")
        
        let truck2 = CLLocationCoordinate2D(latitude: 37.819722, longitude: -122.478611)
        let truck2Annotation = Landmark(coordinate: truck2, name: "Worlds Best Taco Truck, Period.")
        
        let truck3 = CLLocationCoordinate2D(latitude: 36.144150, longitude: -115.293800)
        let truck3Annotation = Landmark(coordinate: truck3, name: "Pho Wheelz")
        
        let truck4 = CLLocationCoordinate2D(latitude: 36.158900, longitude: -115.303580)
        let truck4Annotation = Landmark(coordinate: truck4, name: "Blazing Steaks")
     
        let span = MKCoordinateSpan(latitudeDelta: 30, longitudeDelta: 30)
        let region = MKCoordinateRegion(center: truck2, span: span)
        
        mapView.setRegion(region, animated: false)
        mapView.showAnnotations([truck1Annotation, truck2Annotation, truck3Annotation, truck4Annotation], animated: true)
    }
    //MARK: - FUNCTIONS

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
            if segue.identifier == "operatorDetailSegue" {
                if let detailVC = segue.destination as? OperatorDetailViewController,
                   let indexPath = tableView.indexPathForSelectedRow {
                    detailVC.mockController = mockController
                    detailVC.foodtruckOperator = mockController.operatorArray[indexPath.row]
                }
            }
        
            
        }
        
        
    }


extension OperatorsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        mockController.operatorArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? OperatorTableViewCell else {
            return UITableViewCell()
        }

        let foodtruckOperator = mockController.operatorArray[indexPath.row]
        cell.operatorNameLabel.text = foodtruckOperator.name
        cell.operatorImage.image = UIImage(named: foodtruckOperator.truckImage)
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Tap to view detail!"
    }
    
    
}




