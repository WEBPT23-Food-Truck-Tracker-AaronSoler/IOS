//
//  FavoriteTrucksViewController.swift
//  iosFoodTruckTrackR
//
//  Created by BrysonSaclausa on 10/17/20.
//

import UIKit

class FavoriteTrucksViewController: UIViewController {

    let foodtruckController = FoodtruckController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = . blue

        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if foodtruckController.token == nil {
            performSegue(withIdentifier: "loginsegue", sender: self)
        }
      
    }

    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let loginVC = segue.destination as? LoginViewController {
            loginVC.foodtruckController = foodtruckController
        }
    }
    

}
