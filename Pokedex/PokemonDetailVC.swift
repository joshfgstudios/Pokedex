//
//  PokemonDetailVC.swift
//  Pokedex
//
//  Created by Joshua Ide on 22/02/2016.
//  Copyright © 2016 Fox Gallery Studios. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {

    //Outlets
    //------------------------
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var imgMain: UIImageView!
    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var lblType: UILabel!
    @IBOutlet weak var lblDefence: UILabel!
    @IBOutlet weak var lblHeight: UILabel!
    @IBOutlet weak var lblWeight: UILabel!
    @IBOutlet weak var lblPokeID: UILabel!
    @IBOutlet weak var lblBaseAttack: UILabel!
    @IBOutlet weak var imgCurrentEvo: UIImageView!
    @IBOutlet weak var imgNextEvo: UIImageView!
    @IBOutlet weak var lblEvolution: UILabel!
    
    
    //Variables
    //------------------------
    var pokemon: Pokemon!
    
    
    //Functions
    //------------------------
    override func viewDidLoad() {
        super.viewDidLoad()

        lblName.text = pokemon.name
    }
    
    
    //Actions
    //------------------------
    @IBAction func onBackPressed(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }


}
