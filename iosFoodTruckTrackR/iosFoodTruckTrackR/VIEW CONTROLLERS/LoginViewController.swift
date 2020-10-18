//
//  LoginViewController.swift
//  iosFoodTruckTrackR
//
//  Created by BrysonSaclausa on 10/17/20.
//

import UIKit

enum LoginType {
    case signUp, login
}

class LoginViewController: UIViewController {
    
    var foodtruckController : FoodtruckController?

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .red
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
