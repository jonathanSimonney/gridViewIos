//
//  MyViewController.swift
//  uiLibrary
//
//  Created by Jonathan SIMONNEY on 25/10/2018.
//  Copyright © 2018 Jonathan SIMONNEY. All rights reserved.
//

import UIKit

class MyViewController: UIViewController {
    
    var label: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .red
        // Do any additional setup after loading the view.
        
        let textView = UILabel()
        textView.text = self.label
        self.view.addSubviewGrid(textView, grid: [0, 0, 1, 1], collNumber: 1, rowNumber: 1)
    }
    
    func setLabel(label: String){
        self.label = label
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
