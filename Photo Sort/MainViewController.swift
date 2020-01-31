//
//  MainViewController.swift
//  Photo Sort
//
//  Created by Tova Blau on 1/30/20.
//  Copyright © 2020 Tova Blau. All rights reserved.
//

import Foundation
import UIKit

class MainViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        addText()
        addButton()
    }
    
    @objc func buttonTapped() {
        print("Button pressed")
        let detailViewController = DetailViewController()
        navigationController?.pushViewController(detailViewController, animated: true)
    }
    
    private func addText(){
        
        let mainLabel = UILabel()
        mainLabel.text = "PHOTO SORT"
        mainLabel.font = UIFont.systemFont(ofSize: 36)
        mainLabel.sizeToFit()
        view.addSubview(mainLabel)
        
    }
    
    private func addButton() {
        
        let mainButton = UIButton()
        mainButton.translatesAutoresizingMaskIntoConstraints = false
        
        mainButton.addTarget(self, action: #selector(MainViewController.buttonTapped), for: .touchUpInside)
        mainButton.setTitle("Go to Detail", for: .normal)
        mainButton.setTitleColor(.white, for: .normal)
        mainButton.backgroundColor = .purple
        
        view.addSubview(mainButton)

        
        let horizontalCenter = NSLayoutConstraint(item: mainButton, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1.0, constant: 0)
        
        let verticalCenter = NSLayoutConstraint(item: mainButton, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1.0, constant: 0)
        
        let width = NSLayoutConstraint(item: mainButton, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1.0, constant: 100)
        
        let height = NSLayoutConstraint(item: mainButton, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1.0, constant: 75)
        
        let constraints: [NSLayoutConstraint] = [horizontalCenter, verticalCenter, width, height]
        
        NSLayoutConstraint.activate(constraints)
        
        
        
    }
}
