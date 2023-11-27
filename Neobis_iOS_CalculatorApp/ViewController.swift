//
//  ViewController.swift
//  Neobis_iOS_CalculatorApp
//
//  Created by Yo on 27/11/23.
//

import UIKit

class ViewController: UIViewController {
    var firstNum = 0.0
    var secondNum = 0.0
    var actualOperation: Operation?
    var operationTapped = false
    var equalButtonTapped = false
    
    enum Operation {
        case sum, minus, divide, multiply, percent, comma, equal, minusNumber
    }
    
    let calculatorViewController = CalculatorViewController(frame: UIScreen.main.bounds)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(calculatorViewController)
        setupUI()
    }
    
    private func setupUI() {
        calculatorViewController.ACButton.addTarget(self, action: #selector(cleanButtonTapped), for: .touchUpInside)
        calculatorViewController.oneButton.addTarget(self, action: #selector(numberTapped(_:)), for: .touchUpInside)
        calculatorViewController.twoButton.addTarget(self, action: #selector(numberTapped(_:)), for: .touchUpInside)
        calculatorViewController.threeButton.addTarget(self, action: #selector(numberTapped(_:)), for: .touchUpInside)
        calculatorViewController.fourButton.addTarget(self, action: #selector(numberTapped(_:)), for: .touchUpInside)
        calculatorViewController.fiveButton.addTarget(self, action: #selector(numberTapped(_:)), for: .touchUpInside)
        calculatorViewController.sixButton.addTarget(self, action: #selector(numberTapped(_:)), for: .touchUpInside)
        calculatorViewController.sevenButton.addTarget(self, action: #selector(numberTapped(_:)), for: .touchUpInside)
        calculatorViewController.eightButton.addTarget(self, action: #selector(numberTapped(_:)), for: .touchUpInside)
        calculatorViewController.zeroButton.addTarget(self, action: #selector(numberTapped(_:)), for: .touchUpInside)
        calculatorViewController.nineButton.addTarget(self, action: #selector(numberTapped(_:)), for: .touchUpInside)
        
        //calculator operation
        
        calculatorViewController.plusMinusButton.addTarget(self, action: #selector(operationTapped(_:)), for: .touchUpInside)
        calculatorViewController.percentButton.addTarget(self, action: #selector(operationTapped(_:)), for: .touchUpInside)
        calculatorViewController.divideButton.addTarget(self, action: #selector(operationTapped(_:)), for: .touchUpInside)
        calculatorViewController.multiplyButton.addTarget(self, action: #selector(operationTapped(_:)), for: .touchUpInside)
        calculatorViewController.minusButton.addTarget(self, action: #selector(operationTapped(_:)), for: .touchUpInside)
        calculatorViewController.plusButton.addTarget(self, action: #selector(operationTapped(_:)), for: .touchUpInside)
        calculatorViewController.equalButton.addTarget(self, action: #selector(operationTapped(_:)), for: .touchUpInside)
        calculatorViewController.commaButton.addTarget(self, action: #selector(operationTapped(_:)), for: .touchUpInside)
        
    }
    
    @objc func cleanButtonTapped() {
        operationTapped = false
        calculatorViewController.numberLabel.text = "0"
        actualOperation = nil
        firstNum = 0
    }
    
    @objc func numberTapped(_ sender: UIButton) {
        if let value = calculatorViewController.buttonValues[sender] {
            if calculatorViewController.numberLabel.text == "0" || operationTapped {
                calculatorViewController.numberLabel.text = "\(value)"
                if operationTapped {
                    operationTapped = false
                }
            } else if calculatorViewController.numberLabel.text == "-0" {
                calculatorViewController.numberLabel.text = "\(-value)"
            } else if let text = calculatorViewController.numberLabel.text {
                calculatorViewController.numberLabel.text = "\(text)\(value)"
            }
        }
    }
    
    @objc func operationTapped(_ sender: UIButton) {
        if let value = calculatorViewController.buttonValues[sender] {
            if let text = calculatorViewController.numberLabel.text, let doubleValue = Double(text.replacingOccurrences(of: ",", with: ".")) {
                if value == 1 {
                    calculatorViewController.numberLabel.text = "\(removeZero(from: -doubleValue))"
                    
                } else  if value == 2 {
                    
                    if doubleValue != 0 && firstNum == 0 {
                        calculatorViewController.numberLabel.text = "\(removeZero(from: doubleValue / 100.0))"
                        
                    } else {
                        
                        calculatorViewController.numberLabel.text = "\(removeZero(from: doubleValue * firstNum / 100.0))"
                    }
                    
                } else if value == 7 {
                    calculatorViewController.numberLabel.text = calculatorViewController.numberLabel.text?.appending(",")
                } else {
                    if operationTapped {
                        operationTapped = false
                        equalButtonTapped = false
                    }
                    
                    if equalButtonTapped {
                        equalTapped()
                    }
                    
                    switch value {
                        
                    case 3:
                        actualOperation = .divide
                        firstNum = doubleValue
                        operationTapped = true
                        equalButtonTapped = true
                    case 4:
                        actualOperation = .multiply
                        firstNum = doubleValue
                        operationTapped = true
                        equalButtonTapped = true
                    case 5:
                        actualOperation = .minus
                        firstNum = doubleValue
                        operationTapped = true
                        equalButtonTapped = true
                    case 6:
                        actualOperation = .sum
                        firstNum = doubleValue
                        operationTapped = true
                        equalButtonTapped = true
                    case 8:
                        equalTapped()
                    default:
                        break
                    }
                }
            } else {
                calculatorViewController.numberLabel.text = "error"
            }
        }
        
        func equalTapped() {
            if !equalButtonTapped {return}
            equalButtonTapped = false
            if let operation = actualOperation {
                var secondNumber = 0.0
                if let text = calculatorViewController.numberLabel.text, let value = Double(text.replacingOccurrences(of: ",", with: ".")) {
                    secondNumber = value
                }
                print("First: \(firstNum) | Second: \(secondNumber)")
                switch operation {
                case.sum:
                    let result = firstNum + secondNumber
                    calculatorViewController.numberLabel.text = removeZero(from: result)
                    firstNum = result
                    break
                case.minus:
                    let result = firstNum - secondNumber
                    calculatorViewController.numberLabel.text = removeZero(from: result)
                    firstNum = result
                case.multiply:
                    let result = firstNum * secondNumber
                    calculatorViewController.numberLabel.text = removeZero(from: result)
                    firstNum = result
                    break
                case .divide:
                    if secondNumber == 0 {
                        calculatorViewController.numberLabel.text = "Error"
                        firstNum = 0
                        break
                    }
                    let result = firstNum / secondNumber
                    calculatorViewController.numberLabel.text = removeZero(from: result)
                    firstNum = result
                    break
                default:
                    break
                }
            }
        }
        
        func removeZero(from number: Double) -> String {
            let numberReset = NumberFormatter()
            numberReset.minimumFractionDigits = 0
            numberReset.maximumFractionDigits = 5
            if let resetString = numberReset.string(from: NSNumber(value: number)) {
                return resetString
            } else {
                return"\(number)"
                
            }
        }
    }
}
