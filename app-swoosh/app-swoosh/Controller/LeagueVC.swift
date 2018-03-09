//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Landon Carr on 3/9/18.
//  Copyright © 2018 Landon Carr. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

   
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func OnNextTap(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    
  

}




