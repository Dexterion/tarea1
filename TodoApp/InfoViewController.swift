//
//  InfoViewController.swift
//  TodoApp
//
//  Created by Alumno on 02/05/16.
//  Copyright © 2016 ITESM. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func Close(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
}
