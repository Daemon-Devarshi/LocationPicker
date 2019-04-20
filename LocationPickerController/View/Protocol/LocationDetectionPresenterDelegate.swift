//
//  LocationPermissionPresenterDelegate.swift
//  LocationPicker
//

import UIKit

protocol LocationPermissionPresenterDelegate: class {
    func alertUserForLocationPermission()
    var customAlertEnableLocationTitle: String { get }
    var customAlertEnableLocationMessage: String { get }
    var customAlertEnableLocationCancelTitle: String { get }
    var customAlertEnableLocationOpenSettingsTitle: String { get }
}

extension LocationPermissionPresenterDelegate where Self: UIViewController {
    // Default titles
    var customAlertEnableLocationTitle: String { return "Location Access Disabled!" }
    var customAlertEnableLocationMessage: String { return "Please enable location services from settings so that we can detect your current location." }
    var customAlertEnableLocationCancelTitle: String { return "Cancel" }
    var customAlertEnableLocationOpenSettingsTitle: String { return "Open Settings" }
    
    // Default implementation
    func alertUserForLocationPermission() {
        let alertController = UIAlertController(
            title: customAlertEnableLocationTitle,
            message: customAlertEnableLocationMessage,
            preferredStyle: .alert)
        
        let cancelAction = UIAlertAction(title: customAlertEnableLocationCancelTitle, style: .cancel, handler: nil)
        alertController.addAction(cancelAction)
        
        let openAction = UIAlertAction(title: customAlertEnableLocationOpenSettingsTitle, style: .default) { (action) in
            if let url = URL(string:UIApplicationOpenSettingsURLString) {
                UIApplication.shared.open(url, options: [:], completionHandler: { (success) in
                    if success {
                        
                    }
                })
            }
        }
        alertController.addAction(openAction)
        present(alertController, animated: true, completion: nil)
    }
}
