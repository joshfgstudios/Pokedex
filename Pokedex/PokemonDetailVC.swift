//
//  PokemonDetailVC.swift
//  Pokedex
//
//  Created by Joshua Ide on 22/02/2016.
//  Copyright © 2016 Fox Gallery Studios. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {

    @IBOutlet weak var lblName: UILabel!
    
    var pokemon: Pokemon!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lblName.text = pokemon.name
    }


}
