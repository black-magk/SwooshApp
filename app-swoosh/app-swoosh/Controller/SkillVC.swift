//
//  SkillVC.swift
//  app-swoosh
//
//  Created by Landon Carr on 3/9/18.
//  Copyright © 2018 Landon Carr. All rights reserved.
//

import UIKit

class SkillVC: UIViewController {

    
    var player: Player!
    
    @IBAction func OnNextTapAgain(_ sender: Any) {
        
        performSegue(withIdentifier: "FinalVCSegue", sender: self)
    }
    
    
    @IBOutlet weak var nxtBtn1: BorderButton!
    
    @IBAction func beginLoad(_ sender: Any) {
        
       selectSkill(skillType: "begin")
    }
    
    @IBAction func ballerLoad(_ sender: Any) {
        
         selectSkill(skillType: "baller")
    }
    
    
    
    func selectSkill(skillType: String) {
        player.skillLevel = skillType
       nxtBtn1.isEnabled = true
        
    }
    
   

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
    
   //sprint(player.desiredLeague)
        
    }
  
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let FinalVC = segue.destination as? FinalVC {
            
            FinalVC.player = player
        }
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
