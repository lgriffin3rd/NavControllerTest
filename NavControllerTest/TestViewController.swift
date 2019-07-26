//
//  TestViewController.swift
//  NavControllerTest
//
//  Created by Lewis Griffin on 7/25/19.
//  Copyright © 2019 Lewis Griffin. All rights reserved.
//

import UIKit
import SwiftUI

class TestViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        self.navigationItem.title = "Test VC"
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(showNextVC))
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(closeVC))
    }
    
    @objc func showNextVC() {
        self.navigationController?.pushViewController(SecondViewController(), animated: true)
    }
    
    @objc func closeVC() {
        dismiss(animated: true, completion: nil)
    }
}
