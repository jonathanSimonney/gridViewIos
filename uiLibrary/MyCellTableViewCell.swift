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
    }
    
    func prepareView(index: Int){
        let mapView = MKMapView()
        if (index == 0){
            var mapRegion = MKCoordinateRegion();
            var coordinate = CLLocationCoordinate2D();
            coordinate.latitude = 48.866292
            coordinate.longitude = 2.373542
            mapRegion.center = coordinate;
            mapRegion.span.latitudeDelta = 0.02;
            mapRegion.span.longitudeDelta = 0.02;
            
            mapView.setRegion(mapRegion, animated: false)
        }
        
        let imageView = UIImageView()
        imageView.image = UIImage(named: "icon")
        
        let imageLabel = UILabel()
        imageLabel.text = "image"
        imageLabel.backgroundColor = UIColor(white: 1, alpha: CGFloat(index)/5)
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
