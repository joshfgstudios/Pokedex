//
//  PokeCell.swift
//  Pokedex
//
//  Created by Joshua Ide on 17/02/2016.
//  Copyright © 2016 Fox Gallery Studios. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
    
    @IBOutlet weak var imgThumbnail: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    
    var pokemon: Pokemon!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        layer.cornerRadius = 5.0
        
    }
    
    func configureCell(pokemon: Pokemon) {
        self.pokemon = pokemon
        
        lblName.text = self.pokemon.name.capitalizedString
        imgThumbnail.image = UIImage(named: "\(self.pokemon.pokedexId)")
    }
    
}
