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
    
//    func updateViews() {
//        guard let foodtruckOperatorName = foodtruckOperator?.name else { return }
//
//    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension OperatorsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        mockController.operatorArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        let foodtruckOperator = mockController.operatorArray[indexPath.row]
        cell.textLabel?.text = foodtruckOperator.name
        cell.detailTextLabel?.text = "00.0 Miles Away"
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Tap to view detail!"
    }
    
    
}




