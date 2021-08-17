//
//  DetailViewController.swift
//  TheStarWars
//
//  Created by Артем Ропавка on 16.08.2021.
//

import UIKit
import Alamofire

class DetailViewController: UIViewController {

    @IBOutlet var objectImage: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var item1TitleLabel: UILabel!
    @IBOutlet weak var item1Label: UILabel!
    @IBOutlet weak var item2TitleLabel: UILabel!
    @IBOutlet weak var item2Label: UILabel!
    @IBOutlet weak var item3TitleLabel: UILabel!
    @IBOutlet weak var item3Label: UILabel!
    @IBOutlet weak var item4TitleLabel: UILabel!
    @IBOutlet weak var item4Label: UILabel!
    @IBOutlet weak var item5TitleLabel: UILabel!
    @IBOutlet weak var item5Label: UILabel!
    
    var data: Displayable?
    var listData: [Displayable] = []
      
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(patternImage: UIImage(named: "background")!)
        updateLabels()
    }
      
    private func updateLabels() {
        guard let data = data else { return }
        
        objectImage.image = UIImage(named: data.titleLabelText)
        
        titleLabel.text = data.titleLabelText
        subtitleLabel.text = data.subtitleLabelText
        
        item1TitleLabel.text = data.item1.label
        item1Label.text = data.item1.value
        
        item2TitleLabel.text = data.item2.label
        item2Label.text = data.item2.value
        
        item3TitleLabel.text = data.item3.label
        item3Label.text = data.item3.value
        
        item4TitleLabel.text = data.item4.label
        item4Label.text = data.item4.value
        
        item5TitleLabel.text = data.item5.label
        item5Label.text = data.item5.value
    }
}
