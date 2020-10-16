//
//  OperatorTableViewCell.swift
//  iosFoodTruckTrackR
//
//  Created by BrysonSaclausa on 10/15/20.
//

import UIKit

class OperatorTableViewCell: UITableViewCell {
    
    var foodtruckOperator: FoodtruckOperator? {
        didSet {
            updateViews()
        }
    }

// MARK: - IBOUTLETS
    
    @IBOutlet weak var operatorNameLabel: UILabel!
    
//MARK: - FUNCTIONS
    
    func updateViews() {
        guard let foodtruckOperatorName = foodtruckOperator?.name else { return }
        operatorNameLabel.text = foodtruckOperatorName
        
        
    }
    

}
