//
//  MyCellTableViewCell.swift
//  uiLibrary
//
//  Created by Jonathan SIMONNEY on 25/10/2018.
//  Copyright © 2018 Jonathan SIMONNEY. All rights reserved.
//

import UIKit
import MapKit

class MyCellTableViewCell: UITableViewCell {
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        //self.contentView.backgroundColor = .red
        // Configure the view for the selected state
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        let mapView = MKMapView()
        
        let imageView = UIImageView()
        imageView.image = UIImage(named: "profile")
        
        let imageLabel = UILabel()
        imageLabel.text = "image"
        imageLabel.backgroundColor = UIColor(white: 1, alpha: 0.2)
        imageLabel.textAlignment = .center
        
        let buttonView = UIButton()
        buttonView.setTitle("click", for: .normal)
        buttonView.backgroundColor = .red
        
        self.contentView.addSubviewGrid(mapView, grid: [0, 0, 4, 10], collNumber: 12, rowNumber: 12)
        self.contentView.addSubviewGrid(imageView, grid: [4, 0, 12, 10], collNumber: 12, rowNumber: 12)
        self.contentView.addSubviewGrid(buttonView, grid: [0, 10, 12, 12], collNumber: 12, rowNumber: 12)
        
        imageView.addSubviewGrid(imageLabel, grid: [0, 0, 1, 1], collNumber: 1, rowNumber: 1)
    }
    
    
}
