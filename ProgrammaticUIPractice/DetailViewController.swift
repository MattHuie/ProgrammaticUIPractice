//
//  DetailViewController.swift
//  ProgrammaticUIPractice
//
//  Created by Matthew Huie on 1/24/19.
//  Copyright © 2019 Matthew Huie. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    let detailView = DetailView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(detailView)

      
    }
    
    init(message: String) {
        super.init(nibName: nil, bundle: nil)
        detailView.nameLabel.text = message
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    

}
