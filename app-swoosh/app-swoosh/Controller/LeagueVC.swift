//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Landon Carr on 3/9/18.
//  Copyright © 2018 Landon Carr. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    
    var player: Player!
    
    @IBOutlet weak var nxtBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
    }

    @IBAction func OnNextTap(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    
    @IBAction func onMenTap(_ sender: Any) {
        selectLeague(leagueType: "mens")
    }
    
    @IBAction func onWomenTap(_ sender: Any) {
         selectLeague(leagueType: "womens")
    }
    
    @IBAction func onCoedTap(_ sender: Any) {
       selectLeague(leagueType: "coed")
    }
    
    func selectLeague(leagueType: String) {
        player.desiredLeague = leagueType
        nxtBtn.isEnabled = true

    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
        if let skillVC = segue.destination as? SkillVC {
            
            skillVC.player = player
        }
        
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    
    
    
}




