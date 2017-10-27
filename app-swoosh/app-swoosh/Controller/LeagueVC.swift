//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Admin on 27.10.17.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    var player: Player!


    @IBOutlet weak var nextBtn: BorderButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
        
        print("some code up here \(player.desiredLeague)")

        // Do any additional setup after loading the view.
    }


    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skilVCSegue", sender: self)
    }
    
    @IBAction func onMensTapped(_ sender: Any) {

        selectLeague(leagueType: "mens")


    }

    @IBAction func onWomensTapped(_ sender: Any) {

        selectLeague(leagueType: "womens")

    }
    
    @IBAction func onCoedTapped(_ sender: Any) {

        selectLeague(leagueType: "coed")

    }


    func selectLeague(leagueType: String) {

        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
        nextBtn.setTitleColor(UIColor.white, for: .normal)

    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
    }

}
