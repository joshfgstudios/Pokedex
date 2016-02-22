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

        lblName.text = pokemon.name.capitalizedString
        let img = UIImage(named: "\(pokemon.pokedexId)")
        imgMain.image = img
        imgCurrentEvo.image = img

        
        pokemon.downloadPokemonDetails { () -> () in
            //this will be called after download is done
            self.updateUI()
        }
    }
    
    func updateUI() {
        lblDescription.text = pokemon.description
        lblType.text = pokemon.type
        lblDefence.text = pokemon.defence
        lblHeight.text = pokemon.height
        lblWeight.text = pokemon.weight
        lblBaseAttack.text = pokemon.attack
        lblPokeID.text = "\(pokemon.pokedexId)"
        
        if pokemon.nextEvolutionId == "" {
            lblEvolution.text = "No evolutions."
            imgNextEvo.hidden = true
        } else {
            imgNextEvo.hidden = false
            imgNextEvo.image = UIImage(named: pokemon.nextEvolutionId)
            var str = "Next Evolution: \(pokemon.nextEvolutionTxt)"
            if pokemon.nextEvolutionLvl != "" {
                str += "- LVL \(pokemon.nextEvolutionLvl)"
            }
        }
    }
    
    
    //Actions
    //------------------------
    @IBAction func onBackPressed(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }


}
