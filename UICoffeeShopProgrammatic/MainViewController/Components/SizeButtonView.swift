//
//  SizeButtonView.swift
//  UICoffeeShopProgrammatic
//
//  Created by Hugo Huichalao on 12-07-24.
//

import Foundation
import UIKit

class CustomButton: UIButton {
    
    var isSelectedButton: Bool = false {
        didSet {
            updateAppearance()
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupButton()
    }
    
    private func setupButton() {
        self.backgroundColor = UIColor(rgbValue: 0x282a2f)
        self.tintColor = .lightGray
        self.layer.cornerRadius = 10
        self.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        self.setTitleColor(.lightGray, for: .normal)
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func setTitle(_ title: String) {
        self.setTitle(title, for: .normal)
    }
    
    private func updateAppearance() {
        if isSelectedButton {
            self.layer.borderWidth = 2
            self.layer.borderColor = UIColor(rgbValue: 0xaa5d25).cgColor
            self.setTitleColor(.orange, for: .normal)
        } else {
            self.layer.borderWidth = 0
            self.setTitleColor(.lightGray, for: .normal)
        }
    }
}
