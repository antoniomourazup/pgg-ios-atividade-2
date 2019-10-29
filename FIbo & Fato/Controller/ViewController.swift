//
//  ViewController.swift
//  FIbo & Fato
//
//  Created by zupper on 29/10/19.
//  Copyright © 2019 Risonaldo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let MAX_TIME: Float = 5.0
    var currentTime: Float = 0.0
    
    let FIBONACCI_RESULT = "Fibonacci: "
    let FATORIAL_RESULT = "Fatorial: "
    
    @IBOutlet weak var numberTextField: UITextField?
    @IBOutlet weak var resultFiboTextView: UILabel?
    @IBOutlet weak var resultFatoTextView: UILabel?
    
    @IBOutlet weak var progressView: UIProgressView!
    
    @IBAction func calcularBtn() {
        
        if(numberTextField?.text != ""){
            guard let numberReceived = numberTextField?.text else{return}

            let array = process(n: Int(numberReceived) ?? 0)
            showResultTextView(fibo: String(array[0]), fato: String(array[1]))
            showProgressView()
        }
        
    }
    
    func process(n: Int) -> Array<Int>{
        
       let calculaNumber = CalculaNumber(number: n)
        return calculaNumber.mainClass(n: calculaNumber.getNumber())
        
    }
    
    func showResultTextView(fibo: String, fato: String){
        resultFiboTextView?.text = (FIBONACCI_RESULT+fibo)
        resultFatoTextView?.text = (FATORIAL_RESULT+fato)
    }
    
    func showProgressView(){
        progressView.setProgress(currentTime, animated: true)
        perform(#selector(updateProgress), with: nil, afterDelay: 0.5)
    }
    
    @objc func updateProgress(){
        
        currentTime += 0.5
        progressView.progress = currentTime/MAX_TIME
        if(currentTime < MAX_TIME){
            perform(#selector(updateProgress), with: nil, afterDelay: 0.5)
        }
        else{
            currentTime = 0.0
            clearTextView()
        }
        
    }
    
    func clearTextView(){
        resultFiboTextView?.text = ""
        resultFatoTextView?.text = ""
        numberTextField?.text = ""
    }
    
}

