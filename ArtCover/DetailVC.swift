//
//  DetailVC.swift
//  ArtCover
//
//  Created by Beibarys Shagay on 23.03.2023.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var image: UIImageView!
    
    var trackTile = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        image.image = UIImage(named: trackTile)
        titleLabel.text = trackTile
        titleLabel.numberOfLines = 0


    }
    


}
