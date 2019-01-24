//
//  MainView.swift
//  ProgrammaticUIPractice
//
//  Created by Matthew Huie on 1/24/19.
//  Copyright © 2019 Matthew Huie. All rights reserved.
//

import UIKit

protocol MainViewDelegate: AnyObject {
    
    func seguePressed(message: String)
}

class MainView: UIView {

    weak var delegate: MainViewDelegate?
    var textMessage = String()
    
    lazy var textField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Write A Message"
        textField.backgroundColor = .lightGray
        textField.layer.borderWidth = 5
        textField.delegate = self
        return textField
        
    }()
    
    lazy var button: UIButton = {
        let button = UIButton()
        button.setTitle("Segue", for: .normal)
        button.backgroundColor = .blue
        button.addTarget(self, action: #selector(seguePressed), for: .touchUpInside)
        return button
    }()

    @objc func seguePressed() {
        delegate?.seguePressed(message: textMessage)
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        addSubview(button)
        addSubview(textField)
        setConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setConstraints() {
        button.translatesAutoresizingMaskIntoConstraints = false
        button.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 50).isActive = true
        
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        textField.centerYAnchor.constraint(equalTo: centerYAnchor, constant: -100).isActive = true
    }
}


extension MainView: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let text = textField.text {
            textMessage = text
        }
        
        
        return true
    }
}
