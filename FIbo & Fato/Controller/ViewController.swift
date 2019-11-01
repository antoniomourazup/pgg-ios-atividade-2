//
//  ViewController.swift
//  FIbo & Fato
//
//  Created by zupper on 29/10/19.
//  Copyright © 2019 Risonaldo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var resultTextView: UILabel!
    @IBOutlet weak var progressView: UIProgressView!
    
    @IBAction func calculaFibonacciWhenButtonIsTouchUpInside() {
        if(readTextFromTextFieldAndVerifyIsValid()) {
            let enesimoNumberFibonacci = CalculaFibonacciEFatorial.calculaFibonacci(enesimoNumber: Int(numberTextField.text ?? "") ?? 0)
            showInTextView(resultFibonacciOrFatorial: enesimoNumberFibonacci, messageInTextView: "Fibonacci: ")
        } else {
            showAlertError()
        }
    }
    
    func readTextFromTextFieldAndVerifyIsValid() -> Bool {
        let textReceivedFromTextField: String! = numberTextField.text
        if textReceivedFromTextField.isEmpty {
            return false
        } else {
            return true
        }
    }
    
    @IBAction func calculaFatorialWhenButtonIsTouchUpInside() {
        if(readTextFromTextFieldAndVerifyIsValid()) {
            let numberFatorial = CalculaFibonacciEFatorial.calculaFatorial(numberToFatorial: Int(numberTextField.text ?? "") ?? 0)
            showInTextView(resultFibonacciOrFatorial: numberFatorial, messageInTextView: "Fatorial: ")
        } else {
            showAlertError()
        }
    }
    
    private func showInTextView(resultFibonacciOrFatorial: Int, messageInTextView: String) {
        resultTextView!.text = ("\(messageInTextView) \(resultFibonacciOrFatorial)")
    }
    
    func showAlertError() {
        let alert = UIAlertController(title: "Erro", message: "Informe um número", preferredStyle: .alert)
        let buttonClose = UIAlertAction(title: "FECHAR", style: .cancel, handler: nil)
        alert.addAction(buttonClose)
        self.present(alert, animated: true, completion: nil)
    }
}

