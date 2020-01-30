//
//  ViewController.swift
//  Photo Sort
//
//  Created by Tova Blau on 1/30/20.
//  Copyright © 2020 Tova Blau. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //let articleView = ArticleView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .lightGray
        
//
//        articleView.backgroundColor = .green
//        self.view.addSubview(articleView)
//
//        articleView.translatesAutoresizingMaskIntoConstraints = false
//
//        articleView.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
//        articleView.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
//        articleView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
//        articleView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
//

//        articleView.configure(model: articles[0])
        
        let button = UIButton(type: .roundedRect)
        button.tintColor = .black
        self.view.addSubview(button)
    }
}

