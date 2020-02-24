//
//  ViewController.swift
//  Fotografos
//
//  Created by Abhilash S (BLR GSS) on 19/02/20.
//  Copyright © 2020 Abhilash S (BLR GSS). All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let storyboard = UIStoryboard(name:"LoginStoryboard" ,  bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "loginVC")
        present(controller, animated: true, completion: nil)
    }


}

