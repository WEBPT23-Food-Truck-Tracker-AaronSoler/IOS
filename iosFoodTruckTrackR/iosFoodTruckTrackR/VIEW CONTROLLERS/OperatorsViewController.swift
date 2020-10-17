//
//  OperatorsViewController.swift
//  iosFoodTruckTrackR
//
//  Created by BrysonSaclausa on 10/15/20.
//

import UIKit
import MapKit
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




