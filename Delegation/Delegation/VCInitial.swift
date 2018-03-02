//
//  VCInitial.swift
//  Delegation
//
//  Created by Louisa Xue on 3/1/18.
//  Copyright © 2018 a/A. All rights reserved.
//

import UIKit

class ViewController1: UIViewController, VCFinalDelegate {
    
    @IBAction func btnPerformSeguePressed(_ sender: UIButton) {
        performSegue(withIdentifier: "VCInitialToVCFinal", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? VCFinal {
            destination.delegate = self
        }
    }
    
    func finishPassing(string: String) {
        print("Notified")
    }
}
