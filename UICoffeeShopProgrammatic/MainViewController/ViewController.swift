//
//  ViewController.swift
//  UICoffeeShopProgrammatic
//
//  Created by Hugo Huichalao on 12-07-24.
//

import UIKit

class ViewController: UIViewController {
    
    private let stackViewInitial: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private let stackViewInfo: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private let descriptionTitleLabel: UILabel = {
           let label = UILabel()
           label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textColor = .white
           label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Description"
           return label
       }()
    
    private let descriptionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15)
        label.textColor = .lightGray
        label.numberOfLines = 3
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Drink, taste and drink again. Simple pleasures always taste better with a friend. Since you're a Cappuccino pro, make another one for someone else and impress them with your new cappuccino-making skills."
        return label
    }()
    
    private let sizeTitleLabel: UILabel = {
           let label = UILabel()
           label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textColor = .white
           label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Size"
           return label
       }()
    
    private let buttonStackView: UIStackView = {
            let stackView = UIStackView()
            stackView.axis = .horizontal
            stackView.spacing = 10
            stackView.distribution = .fillEqually
            stackView.translatesAutoresizingMaskIntoConstraints = false
            return stackView
        }()
    
    private let buttonSmall: CustomButton = {
            let button = CustomButton()
            button.setTitle("Small")
            return button
        }()
        
        private let buttonMedium: CustomButton = {
            let button = CustomButton()
            button.setTitle("Medium")
            return button
        }()
    
    let buyNowButton: UIButton = {
        let button = UIButton()
        button.setTitle("Buy Now", for: .normal)
        button.backgroundColor = UIColor(rgbValue: 0xaa5d25)
        button.tintColor = .white
        button.layer.cornerRadius = 12
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
        
        private let buttonLarge: CustomButton = {
            let button = CustomButton()
            button.setTitle("Large")
            return button
        }()
    
    private var buttons: [CustomButton] = []

    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
               buttons = [buttonSmall, buttonMedium, buttonLarge]
               buttons.forEach { button in
                   button.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
               }
        
    }
    
    private func setupViews(){
        view.addSubview(stackViewInitial)
        view.addSubview(stackViewInfo)
        view.addSubview(descriptionTitleLabel)
        view.addSubview(descriptionLabel)
        view.addSubview(sizeTitleLabel)
        view.addSubview(buttonStackView)
        view.addSubview(buyNowButton)

        buttonStackView.addArrangedSubview(buttonSmall)
               buttonStackView.addArrangedSubview(buttonMedium)
               buttonStackView.addArrangedSubview(buttonLarge)
        view.backgroundColor = UIColor(rgbValue: 0x191d20)

        
        let stackInitialViewController = StackImagesView()
        let stackInfoViewController = StackDetailView()
        addChild(stackInitialViewController)
        addChild(stackInfoViewController)
        stackInitialViewController.view.translatesAutoresizingMaskIntoConstraints = false
        stackInfoViewController.view.translatesAutoresizingMaskIntoConstraints = false
        stackViewInitial.addArrangedSubview(stackInitialViewController.view)
        stackViewInfo.addArrangedSubview(stackInfoViewController.view)
        stackInitialViewController.didMove(toParent: self)
        stackInfoViewController.didMove(toParent: self)
        
        NSLayoutConstraint.activate([
            stackViewInitial.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            stackViewInitial.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            stackViewInitial.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            
            stackViewInfo.topAnchor.constraint(equalTo: stackViewInitial.bottomAnchor, constant: -100),
            stackViewInfo.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            stackViewInfo.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            
            descriptionTitleLabel.topAnchor.constraint(equalTo: stackViewInfo.bottomAnchor, constant: 160),
            descriptionTitleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            descriptionTitleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
           
            
            descriptionLabel.topAnchor.constraint(equalTo: stackViewInfo.bottomAnchor, constant: 200),
            descriptionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            descriptionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            
            sizeTitleLabel.topAnchor.constraint(equalTo: stackViewInfo.bottomAnchor, constant: 270),
            sizeTitleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            sizeTitleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            
            buttonStackView.topAnchor.constraint(equalTo: sizeTitleLabel.bottomAnchor, constant: 20),
                        buttonStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
                        buttonStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
                        buttonStackView.heightAnchor.constraint(equalToConstant: 35),
            
            buyNowButton.topAnchor.constraint(equalTo: buttonStackView.bottomAnchor, constant: 30),
            buyNowButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            buyNowButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            buyNowButton.heightAnchor.constraint(equalToConstant: 55),
            buyNowButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50)

            
        ])
    }
    @objc private func buttonTapped(_ sender: CustomButton) {
          buttons.forEach { $0.isSelectedButton = ($0 == sender) }
      }
}

extension UIColor {
    convenience init(rgbValue: Int, alpha: CGFloat = 1.0) {
        self.init(
            red: CGFloat((rgbValue >> 16) & 0xFF) / 255.0,
            green: CGFloat((rgbValue >> 8) & 0xFF) / 255.0,
            blue: CGFloat(rgbValue & 0xFF) / 255.0,
            alpha: alpha
        )
    }
}


