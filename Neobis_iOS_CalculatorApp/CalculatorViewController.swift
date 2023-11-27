//
//  CalculatorViewController.swift
//  Neobis_iOS_CalculatorApp
//
//  Created by Yo on 27/11/23.
//

import Foundation
import UIKit

class CalculatorViewController: UIView {
    
    var buttonValues = [UIButton: Int]()
    
    lazy var numberLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 70)
        label.text = "0"
        label.textAlignment = .right
        label.minimumScaleFactor = 1
        label.adjustsFontSizeToFitWidth = true
        return label
    }()
    
    lazy var ACButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("AC", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.layer.cornerRadius = 40
        button.backgroundColor = UIColor.lightGray
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        return button
    }()
    
    lazy var plusMinusButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("+/-", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.layer.cornerRadius = 40
        button.backgroundColor = UIColor.lightGray
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        self.buttonValues[button] = 1
        return button
    }()
    
    lazy var percentButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("%", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.layer.cornerRadius = 40
        button.backgroundColor = UIColor.lightGray
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        self.buttonValues[button] = 2
        return button
    }()
    
    lazy var divideButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("÷", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.layer.cornerRadius = 40
        button.backgroundColor = UIColor.systemOrange
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 35)
        self.buttonValues[button] = 3
        return button
    }()
    
    lazy var sevenButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("7", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.layer.cornerRadius = 40
        button.backgroundColor = UIColor.darkGray
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 35)
        self.buttonValues[button] = 7
        return button
    }()
    
    lazy var eightButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("8", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.layer.cornerRadius = 40
        button.backgroundColor = UIColor.darkGray
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 35)
        self.buttonValues[button] = 8
        return button
    }()
    
    lazy var nineButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("9", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.layer.cornerRadius = 40
        button.backgroundColor = UIColor.darkGray
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 35)
        self.buttonValues[button] = 9
        return button
    }()
    
    lazy var multiplyButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("\u{00D7}", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.layer.cornerRadius = 40
        button.backgroundColor = UIColor.systemOrange
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 35)
        self.buttonValues[button] = 4
        return button
    }()
    
    lazy var fourButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("4", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.layer.cornerRadius = 40
        button.backgroundColor = UIColor.darkGray
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 35)
        self.buttonValues[button] = 4
        return button
    }()
    
    lazy var fiveButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("5", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.layer.cornerRadius = 40
        button.backgroundColor = UIColor.darkGray
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 35)
        self.buttonValues[button] = 5
        return button
    }()
    
    lazy var sixButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("6", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.layer.cornerRadius = 40
        button.backgroundColor = UIColor.darkGray
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 35)
        self.buttonValues[button] = 6
        return button
    }()
    
    lazy var minusButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("-", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.layer.cornerRadius = 40
        button.backgroundColor = UIColor.systemOrange
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 35)
        self.buttonValues[button] = 5
        return button
    }()
    
    lazy var oneButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("1", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.layer.cornerRadius = 40
        button.backgroundColor = UIColor.darkGray
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 35)
        self.buttonValues[button] = 1
        return button
    }()
    
    lazy var twoButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("2", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.layer.cornerRadius = 40
        button.backgroundColor = UIColor.darkGray
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 35)
        self.buttonValues[button] = 2
        return button
    }()
    
    lazy var threeButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("3", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.layer.cornerRadius = 40
        button.backgroundColor = UIColor.darkGray
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 35)
        self.buttonValues[button] = 3
        return button
    }()
    
    lazy var plusButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("+", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.layer.cornerRadius = 40
        button.backgroundColor = UIColor.systemOrange
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 35)
        self.buttonValues[button] = 6
        return button
    }()
    
    lazy var zeroButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("0", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.layer.cornerRadius = 40
        button.backgroundColor = UIColor.darkGray
        button.titleLabel?.textAlignment = .left
        button.contentHorizontalAlignment = .leading
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 35)
        button.contentEdgeInsets = UIEdgeInsets(top: 0, left: 30, bottom: 0, right: 0)
        self.buttonValues[button] = 0
        return button
    }()
    
    lazy var commaButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle(",", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.layer.cornerRadius = 40
        button.backgroundColor = UIColor.darkGray
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 35)
        self.buttonValues[button] = 7
        return button
    }()
    
    lazy var equalButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("=", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.layer.cornerRadius = 40
        button.backgroundColor = UIColor.darkGray
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 35)
        self.buttonValues[button] = 8
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .black
        addSubview(ACButton)
        addSubview(plusMinusButton)
        addSubview(percentButton)
        addSubview(divideButton)
        addSubview(sevenButton)
        addSubview(eightButton)
        addSubview(nineButton)
        addSubview(multiplyButton)
        addSubview(fourButton)
        addSubview(fiveButton)
        addSubview(sixButton)
        addSubview(minusButton)
        addSubview(oneButton)
        addSubview(twoButton)
        addSubview(threeButton)
        addSubview(plusButton)
        addSubview(zeroButton)
        addSubview(commaButton)
        addSubview(equalButton)
        addSubview(numberLabel)
        
        numberLabel.translatesAutoresizingMaskIntoConstraints = false
        ACButton.translatesAutoresizingMaskIntoConstraints = false
        plusMinusButton.translatesAutoresizingMaskIntoConstraints = false
        percentButton.translatesAutoresizingMaskIntoConstraints = false
        divideButton.translatesAutoresizingMaskIntoConstraints = false
        sevenButton.translatesAutoresizingMaskIntoConstraints = false
        eightButton.translatesAutoresizingMaskIntoConstraints = false
        nineButton.translatesAutoresizingMaskIntoConstraints = false
        multiplyButton.translatesAutoresizingMaskIntoConstraints = false
        fourButton.translatesAutoresizingMaskIntoConstraints = false
        fiveButton.translatesAutoresizingMaskIntoConstraints = false
        sixButton.translatesAutoresizingMaskIntoConstraints = false
        minusButton.translatesAutoresizingMaskIntoConstraints = false
        oneButton.translatesAutoresizingMaskIntoConstraints = false
        twoButton.translatesAutoresizingMaskIntoConstraints = false
        threeButton.translatesAutoresizingMaskIntoConstraints = false
        plusButton.translatesAutoresizingMaskIntoConstraints = false
        zeroButton.translatesAutoresizingMaskIntoConstraints = false
        commaButton.translatesAutoresizingMaskIntoConstraints = false
        equalButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            numberLabel.topAnchor.constraint(equalTo: topAnchor, constant: 240),
            numberLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            numberLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -50),
            
            ACButton.topAnchor.constraint(equalTo: topAnchor, constant: 350),
            ACButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            ACButton.widthAnchor.constraint(equalToConstant: 80),
            ACButton.heightAnchor.constraint(equalToConstant: 80),
            
            plusMinusButton.topAnchor.constraint(equalTo: topAnchor, constant: 350),
            plusMinusButton.leadingAnchor.constraint(equalTo: ACButton.trailingAnchor, constant: 10),
            plusMinusButton.widthAnchor.constraint(equalToConstant: 80),
            plusMinusButton.heightAnchor.constraint(equalToConstant: 80),
            
            percentButton.topAnchor.constraint(equalTo: topAnchor, constant: 350),
            percentButton.leadingAnchor.constraint(equalTo: plusMinusButton.trailingAnchor, constant: 10),
            percentButton.widthAnchor.constraint(equalToConstant: 80),
            percentButton.heightAnchor.constraint(equalToConstant: 80),
            
            divideButton.topAnchor.constraint(equalTo: topAnchor, constant: 350),
            divideButton.leadingAnchor.constraint(equalTo: percentButton.trailingAnchor, constant: 10),
            divideButton.widthAnchor.constraint(equalToConstant: 80),
            divideButton.heightAnchor.constraint(equalToConstant: 80),
            
            sevenButton.topAnchor.constraint(equalTo: ACButton.bottomAnchor, constant: 10),
            sevenButton.leadingAnchor.constraint(equalTo: ACButton.leadingAnchor),
            sevenButton.widthAnchor.constraint(equalToConstant: 80),
            sevenButton.heightAnchor.constraint(equalToConstant: 80),

            eightButton.topAnchor.constraint(equalTo: ACButton.bottomAnchor, constant: 10),
            eightButton.leadingAnchor.constraint(equalTo: sevenButton.trailingAnchor, constant: 10),
            eightButton.widthAnchor.constraint(equalToConstant: 80),
            eightButton.heightAnchor.constraint(equalToConstant: 80),
            
            nineButton.topAnchor.constraint(equalTo: divideButton.bottomAnchor, constant: 10),
            nineButton.leadingAnchor.constraint(equalTo: eightButton.trailingAnchor, constant: 10),
            nineButton.widthAnchor.constraint(equalToConstant: 80),
            nineButton.heightAnchor.constraint(equalToConstant: 80),
            
            multiplyButton.topAnchor.constraint(equalTo: percentButton.bottomAnchor, constant: 10),
            multiplyButton.leadingAnchor.constraint(equalTo: nineButton.trailingAnchor, constant: 10),
            multiplyButton.widthAnchor.constraint(equalToConstant: 80),
            multiplyButton.heightAnchor.constraint(equalToConstant: 80),
            
            fourButton.topAnchor.constraint(equalTo: sevenButton.bottomAnchor, constant: 10),
            fourButton.leadingAnchor.constraint(equalTo: sevenButton.leadingAnchor),
            fourButton.widthAnchor.constraint(equalToConstant: 80),
            fourButton.heightAnchor.constraint(equalToConstant: 80),
            
            fiveButton.topAnchor.constraint(equalTo: eightButton.bottomAnchor, constant: 10),
            fiveButton.leadingAnchor.constraint(equalTo: eightButton.leadingAnchor),
            fiveButton.widthAnchor.constraint(equalToConstant: 80),
            fiveButton.heightAnchor.constraint(equalToConstant: 80),
            
            sixButton.topAnchor.constraint(equalTo: nineButton.bottomAnchor, constant: 10),
            sixButton.leadingAnchor.constraint(equalTo: nineButton.leadingAnchor),
            sixButton.widthAnchor.constraint(equalToConstant: 80),
            sixButton.heightAnchor.constraint(equalToConstant: 80),
            
            minusButton.topAnchor.constraint(equalTo: multiplyButton.bottomAnchor, constant: 10),
            minusButton.leadingAnchor.constraint(equalTo: multiplyButton.leadingAnchor),
            minusButton.widthAnchor.constraint(equalToConstant: 80),
            minusButton.heightAnchor.constraint(equalToConstant: 80),
            
            oneButton.topAnchor.constraint(equalTo: fourButton.bottomAnchor, constant: 10),
            oneButton.leadingAnchor.constraint(equalTo: fourButton.leadingAnchor),
            oneButton.widthAnchor.constraint(equalToConstant: 80),
            oneButton.heightAnchor.constraint(equalToConstant: 80),
            
            twoButton.topAnchor.constraint(equalTo: fiveButton.bottomAnchor, constant: 10),
            twoButton.leadingAnchor.constraint(equalTo: fiveButton.leadingAnchor),
            twoButton.widthAnchor.constraint(equalToConstant: 80),
            twoButton.heightAnchor.constraint(equalToConstant: 80),
            
            threeButton.topAnchor.constraint(equalTo: sixButton.bottomAnchor, constant: 10),
            threeButton.leadingAnchor.constraint(equalTo: sixButton.leadingAnchor),
            threeButton.widthAnchor.constraint(equalToConstant: 80),
            threeButton.heightAnchor.constraint(equalToConstant: 80),
            
            plusButton.topAnchor.constraint(equalTo: minusButton.bottomAnchor, constant: 10),
            plusButton.leadingAnchor.constraint(equalTo: minusButton.leadingAnchor),
            plusButton.widthAnchor.constraint(equalToConstant: 80),
            plusButton.heightAnchor.constraint(equalToConstant: 80),
            
            
            zeroButton.topAnchor.constraint(equalTo: oneButton.bottomAnchor, constant: 10),
            zeroButton.leadingAnchor.constraint(equalTo: oneButton.leadingAnchor),
            zeroButton.widthAnchor.constraint(equalToConstant: 170),
            zeroButton.heightAnchor.constraint(equalToConstant: 80),
            
            commaButton.topAnchor.constraint(equalTo: threeButton.bottomAnchor, constant: 10),
            commaButton.leadingAnchor.constraint(equalTo: threeButton.leadingAnchor),
            commaButton.widthAnchor.constraint(equalToConstant: 80),
            commaButton.heightAnchor.constraint(equalToConstant: 80),
            
            equalButton.topAnchor.constraint(equalTo: plusButton.bottomAnchor, constant: 10),
            equalButton.leadingAnchor.constraint(equalTo: plusButton.leadingAnchor),
            equalButton.widthAnchor.constraint(equalToConstant: 80),
            equalButton.heightAnchor.constraint(equalToConstant: 80),

        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
