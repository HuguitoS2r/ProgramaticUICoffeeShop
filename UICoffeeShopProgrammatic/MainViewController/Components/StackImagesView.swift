//
//  StackView.swift
//  UICoffeeShopProgrammatic
//
//  Created by Hugo Huichalao on 12-07-24.
//

import Foundation
import UIKit

class StackImagesView: UIViewController {
    
    private let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.layer.cornerRadius = 20
        return view
    }()
    
 
    
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "coffee")
        return imageView
    }()
    
    let iconContainerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(rgbValue: 0x191d20)
        view.layer.cornerRadius = 8
        view.layer.masksToBounds = true
        return view
    }()
    
    let iconImage: UIImageView = {
        let icon = UIImageView()
        icon.image = UIImage(systemName: "chevron.left")
        icon.translatesAutoresizingMaskIntoConstraints = false
        icon.tintColor = .white
        return icon
    }()
    
    let heartContainerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(rgbValue: 0x191d20)
        view.layer.cornerRadius = 8
        view.layer.masksToBounds = true
        return view
    }()
    
    let heartImage: UIImageView = {
        let heart = UIImageView()
        heart.image = UIImage(systemName: "heart")
        heart.translatesAutoresizingMaskIntoConstraints = false
        heart.tintColor = .white
        return heart
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    private func setupViews() {
        view.addSubview(containerView)
        containerView.addSubview(imageView)
        containerView.addSubview(iconContainerView)
        iconContainerView.addSubview(iconImage)
        containerView.addSubview(heartContainerView)
        heartContainerView.addSubview(heartImage)
        
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            containerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
          
            containerView.heightAnchor.constraint(equalToConstant: 350),
            
           
            imageView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
           
            imageView.heightAnchor.constraint(equalToConstant: 270),
            imageView.widthAnchor.constraint(equalToConstant: 270),
          
            
            iconContainerView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 10),
            iconContainerView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 10),
            iconContainerView.widthAnchor.constraint(equalToConstant: 40),
            iconContainerView.heightAnchor.constraint(equalToConstant: 40),
            
            iconImage.centerXAnchor.constraint(equalTo: iconContainerView.centerXAnchor),
            iconImage.centerYAnchor.constraint(equalTo: iconContainerView.centerYAnchor),
            iconImage.widthAnchor.constraint(equalToConstant: 20),
            iconImage.heightAnchor.constraint(equalToConstant: 20),
            
            heartContainerView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 10),
            heartContainerView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -10),
            heartContainerView.widthAnchor.constraint(equalToConstant: 40),
            heartContainerView.heightAnchor.constraint(equalToConstant: 40),
            
            heartImage.centerXAnchor.constraint(equalTo: heartContainerView.centerXAnchor),
            heartImage.centerYAnchor.constraint(equalTo: heartContainerView.centerYAnchor),
            heartImage.widthAnchor.constraint(equalToConstant: 20),
            heartImage.heightAnchor.constraint(equalToConstant: 20)
            
            
        ])
    }
}
