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
    
    //MARK: - MAP
    
    func setupAnnotations() {
        // DOGGIE DINER
        let doggieDiner = CLLocationCoordinate2D(latitude: 37.735461, longitude: -122.502969)
        let doggieDinerAnnotation = Landmark(coordinate: doggieDiner, name: "Corndogs On The Run, Bro!")
        
        let ggBridge = CLLocationCoordinate2D(latitude: 37.819722, longitude: -122.478611)
        let ggBridgeAnnotation = Landmark(coordinate: ggBridge, name: "Worlds Best Taco Truck, Period")
     
        let span = MKCoordinateSpan(latitudeDelta: 30, longitudeDelta: 30)
        let region = MKCoordinateRegion(center: doggieDiner, span: span)
        mapView.setRegion(region, animated: false)
       
        mapView.showAnnotations([doggieDinerAnnotation, ggBridgeAnnotation], animated: true)
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




