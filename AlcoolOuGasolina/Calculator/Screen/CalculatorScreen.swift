//
//  CalculatorScreen.swift
//  AlcoolOuGasolina
//
//  Created by Gabriel Mors  on 21/08/23.
//

import UIKit

class CalculatorScreen: UIView {
    
    lazy var backgroundImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "BG BLUR DARK")
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var backButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Botão Back", for: .normal)
//        button.clipsToBounds = true
//        button.layer.cornerRadius = 8
        button.addTarget(self, action: #selector(tappedBackButton), for: .touchUpInside)
        return button
    }()
    
    @objc private func tappedBackButton() {
        
    }
    
    lazy var logoAppImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "LOGO menor")
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var ethanolPriceTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.font = UIFont.systemFont(ofSize: 18)
        textField.placeholder = "Preço do Álcool"
        textField.backgroundColor = .white
        textField.borderStyle = .roundedRect
        textField.keyboardType = .decimalPad
        textField.autocorrectionType = .no
        textField.spellCheckingType = .no
        textField.textColor = .darkGray
        return textField
    }()
    
    lazy var gasPriceTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.font = UIFont.systemFont(ofSize: 18)
        textField.placeholder = "Preço da Gasolina"
        textField.backgroundColor = .white
        textField.borderStyle = .roundedRect
        textField.keyboardType = .decimalPad
        textField.autocorrectionType = .no
        textField.spellCheckingType = .no
        textField.textColor = .darkGray
        return textField
    }()
    
    lazy var calculateButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Calcular", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = UIColor(red: 128/255, green: 128/255, blue: 128/255, alpha: 1.0)
        button.clipsToBounds = true
        button.layer.cornerRadius = 8
        button.addTarget(self, action: #selector(tappedCalculateButton), for: .touchUpInside)
        return button
    }()
    
    @objc private func tappedCalculateButton() {
        
    }
    
    private func addSubViews() {
        addSubview(backgroundImageView)
        addSubview(backButton)
        addSubview(logoAppImageView)
        addSubview(ethanolPriceTextField)
        addSubview(gasPriceTextField)
        addSubview(calculateButton)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubViews()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            backgroundImageView.topAnchor.constraint(equalTo: topAnchor),
            backgroundImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgroundImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            backgroundImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
        
            backButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            backButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            
            
            logoAppImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 150),
            logoAppImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            logoAppImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            ethanolPriceTextField.topAnchor.constraint(equalTo: logoAppImageView.bottomAnchor, constant: 134),
            ethanolPriceTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            ethanolPriceTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            ethanolPriceTextField.heightAnchor.constraint(equalToConstant: 45),
            
            gasPriceTextField.topAnchor.constraint(equalTo: ethanolPriceTextField.bottomAnchor, constant: 16),
            gasPriceTextField.leadingAnchor.constraint(equalTo: ethanolPriceTextField.leadingAnchor),
            gasPriceTextField.trailingAnchor.constraint(equalTo: ethanolPriceTextField.trailingAnchor),
            gasPriceTextField.heightAnchor.constraint(equalTo: ethanolPriceTextField.heightAnchor),
            
            calculateButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -135),
            calculateButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 60),
            calculateButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -60),
            calculateButton.heightAnchor.constraint(equalToConstant: 45),
            
            
        ])
    }
}
