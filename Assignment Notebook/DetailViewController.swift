//
//  DetailViewController.swift
//  Assignment Notebook
//
//  Created by Emily Kirk on 2/5/19.
//  Copyright © 2019 Emily Kirk. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var classNameTextField: UITextField!
    @IBOutlet weak var dateTextField: UITextField!
    
    var detailItem: Assignment? {
        didSet {
            // Update the view.
            configureView()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }
    
    func configureView() {
        // Update the user interface for the detail item.
        if let assignment = self.detailItem {
            if nameTextField != nil {
                nameTextField.text = assignment.name
                classNameTextField.text = assignment.className
                dateTextField.text = assignment.dueDate
            }
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        if let assignment = self.detailItem {
            assignment.name = nameTextField.text!
            assignment.className = classNameTextField.text!
            assignment.dueDate = dateTextField.text!
        }
    }
}

