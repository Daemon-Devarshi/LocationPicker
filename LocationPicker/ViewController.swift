//
//  ViewController.swift
//  LocationPicker
//
//  Created by Devarshi on 4/12/18.
//  Copyright © 2018 Devarshi. All rights reserved.
//

import CoreLocation
import UIKit
import LocationPickerController

class ViewController: UIViewController, LocationPickerControllerProvider, LocationPickerControllerPresenter, SelectedLocationDelegate {

    func selected(location: CLPlacemark) {
        
    }
    @IBAction func showLocationPicker(_ sender: Any) {
        pushLocationPicker(with: self, provider: self, animated: true, on: self.navigationController)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

