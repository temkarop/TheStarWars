//
//  ObjectListCell.swift
//  TheStarWars
//
//  Created by Артем Ропавка on 16.08.2021.
//

import UIKit

class ObjectListCell: UITableViewCell {

    @IBOutlet var objectImage: UIImageView!
    @IBOutlet var objectCell: UILabel!
    
    func configure(with items: Displayable) {
        
        objectCell.text = items.titleLabelText
        objectImage.image = UIImage(named: items.titleLabelText)
        
        print(items)
    }
}
