//
//  VCFinal.swift
//  Delegation
//
//  Created by Louisa Xue on 3/1/18.
//  Copyright © 2018 a/A. All rights reserved.
//

import UIKit

protocol VCFinalDelegate {
    func finishPassing(string: String)
}

class VCFinal: UIViewController {
    
    var delegate: VCFinalDelegate?
    
    @IBAction func btnPassDataPressed(_ sender: UIButton) {
        delegate?.finishPassing(string: "Sent from VCFinal")
    }
}
