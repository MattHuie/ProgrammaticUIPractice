//
//  DetailView.swift
//  ProgrammaticUIPractice
//
//  Created by Matthew Huie on 1/24/19.
//  Copyright © 2019 Matthew Huie. All rights reserved.
//

import UIKit

class DetailView: UIView {

    lazy var nameLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        addSubview(nameLabel)
        backgroundColor = .white
        setDetailConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been omplemented")
    }
    
    func setDetailConstraints() {
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        nameLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }

}
