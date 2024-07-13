//
//  StackDetailView.swift
//  UICoffeeShopProgrammatic
//
//  Created by Hugo Huichalao on 12-07-24.
//


import Foundation
import UIKit

class StackDetailView: UIViewController {
    
    private let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 35
        view.backgroundColor = UIColor(rgbValue: 0x282a2f)
        return view
    }()
    
     
   
    
    let nameLabel: UILabel = {
           let label = UILabel()
           label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textColor = .white
           label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Cappucino"
           return label
       }()
    
    let priceLabel: UILabel = {
           let label = UILabel()
           label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textColor = UIColor(rgbValue: 0xaa5d25)
           label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "$50"
           return label
       }()
    
    let brandLabel: UILabel = {
           let label = UILabel()
           label.font = UIFont.systemFont(ofSize: 15)
        label.textColor = .white
           label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Decafe Pike"
           return label
       }()
    
    let punctuationLabel: UILabel = {
           let label = UILabel()
           label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textColor = .white
           label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "4.5"
           return label
       }()
    
    let quantityPunctuationLabel: UILabel = {
           let label = UILabel()
           label.font = UIFont.systemFont(ofSize: 15)
        label.textColor = .gray
           label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "(4,461)"
           return label
       }()
    
   
    
    let iconImage: UIImageView = {
        let icon = UIImageView()
        icon.image = UIImage(systemName: "star.fill")
        icon.translatesAutoresizingMaskIntoConstraints = false
        icon.tintColor = .systemOrange
        return icon
    }()
    
    let addToCartButton: UIButton = {
        let button = UIButton()
        button.setTitle("Add to cart", for: .normal)
        button.backgroundColor = UIColor(rgbValue: 0xaa5d25)
        button.tintColor = .white
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
       

        setupViews()
    }
    

    
    private func setupViews() {
        view.addSubview(containerView)
      
        containerView.addSubview(nameLabel)
        containerView.addSubview(priceLabel)
        containerView.addSubview(brandLabel)
        containerView.addSubview(iconImage)
        containerView.addSubview(punctuationLabel)
        containerView.addSubview(quantityPunctuationLabel)
        containerView.addSubview(addToCartButton)
       
        
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: view.bottomAnchor),
            containerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            containerView.heightAnchor.constraint(equalToConstant: 135),
            
            nameLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 15),
            nameLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 25),
            
            brandLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 20),
            brandLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 25),
            brandLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -25),
            
            priceLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 15),
            priceLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -25),
            
            iconImage.topAnchor.constraint(equalTo: brandLabel.bottomAnchor, constant: 20),
            iconImage.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 25),
            iconImage.heightAnchor.constraint(equalToConstant: 17),
            iconImage.widthAnchor.constraint(equalToConstant: 17),
            
            punctuationLabel.topAnchor.constraint(equalTo: brandLabel.bottomAnchor, constant: 20),
            punctuationLabel.leadingAnchor.constraint(equalTo: iconImage.leadingAnchor, constant: 30),
            
            quantityPunctuationLabel.topAnchor.constraint(equalTo: brandLabel.bottomAnchor, constant: 20),
            quantityPunctuationLabel.leadingAnchor.constraint(equalTo: punctuationLabel.leadingAnchor, constant: 40),
            
            addToCartButton.topAnchor.constraint(equalTo: brandLabel.bottomAnchor, constant: 10),
            addToCartButton.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -25),
            addToCartButton.widthAnchor.constraint(equalToConstant: 150),
            addToCartButton.heightAnchor.constraint(equalToConstant: 35)
            
           
          
            
         
            
           
      
            
          
            
            
        ])
    }
}
