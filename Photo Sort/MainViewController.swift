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
        view.backgroundColor = .lightGray
        
        let llp = UIImage(named: "loose_leaf_paper.jpg")
        
        view.backgroundColor = UIColor(patternImage: llp!)
        
        //addText()
        //addButton()
        
        let mainButton1 = UIButton()
        mainButton1.translatesAutoresizingMaskIntoConstraints = false
               
        mainButton1.addTarget(self, action: #selector(MainViewController.buttonTapped), for: .touchUpInside)


        //mainButton1.layer.cornerRadius = mainButton1.bounds.size.height / 2.0
        mainButton1.layer.cornerRadius = 10;
        mainButton1.setTitle("Add Photo", for: .normal)
        mainButton1.setTitleColor(.white, for: .normal)
        mainButton1.backgroundColor = .purple
               
        view.addSubview(mainButton1)
        
        mainButton1.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        mainButton1.topAnchor.constraint(equalTo: view.topAnchor, constant: 500).isActive = true
        mainButton1.widthAnchor.constraint(equalToConstant: 300).isActive = true
        mainButton1.heightAnchor.constraint(equalToConstant: 69).isActive = true
        
//        let mainButton2 = UIButton()
//        mainButton2.translatesAutoresizingMaskIntoConstraints = false
//
//        mainButton2.addTarget(self, action: #selector(MainViewController.buttonTapped), for: .touchUpInside)
//        mainButton2.setTitle("Add Photo from Library", for: .normal)
//        mainButton2.setTitleColor(.white, for: .normal)
//        mainButton2.backgroundColor = .purple
//
//        view.addSubview(mainButton2)
//
//        mainButton2.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        mainButton2.topAnchor.constraint(equalTo: view.topAnchor, constant: 570).isActive = true
//        mainButton2.widthAnchor.constraint(equalToConstant: 300).isActive = true
//        mainButton2.heightAnchor.constraint(equalToConstant: 69).isActive = true
//
//
           
        
        let mainLabel = UILabel()
        mainLabel.text = "PHOTO SORT"
        mainLabel.font = UIFont.boldSystemFont(ofSize: 60)
        mainLabel.sizeToFit()
        mainLabel.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(mainLabel)
        
        mainLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        mainLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 175).isActive = true
        
        
    }
    
    @objc func buttonTapped() {
        //print("Button pressed")
        //let detailViewController = DetailViewController()
        let cameraHandler = CameraHandler()
        cameraHandler.showActionSheet(vc: self)
        //navigationController?.pushViewController(detailViewController, animated: true)
    }
    
    //private func addText(){
        
        
        
//        let horizontalCenter = NSLayoutConstraint(item: mainLabel, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1.0, constant: 0)
//
//        let verticalCenter = NSLayoutConstraint(item: mainLabel, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1.0, constant: 100)
//
//        let width = NSLayoutConstraint(item: mainLabel, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1.0, constant: 300)
//
//        let height = NSLayoutConstraint(item: mainLabel, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1.0, constant: 100)
//
//        let constraints: [NSLayoutConstraint] = [horizontalCenter, verticalCenter, width, height]
//
//        NSLayoutConstraint.activate(constraints)
        
   // }
    
    //private func addButton() {
        
//        let mainButton = UIButton()
//        mainButton.translatesAutoresizingMaskIntoConstraints = false
//
//        mainButton.addTarget(self, action: #selector(MainViewController.buttonTapped), for: .touchUpInside)
//        mainButton.setTitle("Add Photo", for: .normal)
//        mainButton.setTitleColor(.white, for: .normal)
//        mainButton.backgroundColor = .purple
//
//        view.addSubview(mainButton)
//
//
//        let horizontalCenter = NSLayoutConstraint(item: mainButton, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1.0, constant: 0)
//
//        let verticalCenter = NSLayoutConstraint(item: mainButton, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1.0, constant: 0)
//
//        let width = NSLayoutConstraint(item: mainButton, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1.0, constant: 200)
//
//        let height = NSLayoutConstraint(item: mainButton, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1.0, constant: 75)
//
//        let constraints: [NSLayoutConstraint] = [horizontalCenter, verticalCenter, width, height]
//
//        NSLayoutConstraint.activate(constraints)
//
//
//
//    }
}
