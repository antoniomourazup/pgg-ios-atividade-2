//
//  CalculaNumber.swift
//  FIbo & Fato
//
//  Created by zupper on 29/10/19.
//  Copyright © 2019 Risonaldo. All rights reserved.
//

import UIKit

class CalculaNumber{

    var numeroN: Int
    var arrayResult = [Int]()

    init(number: Int){
        self.numeroN = number
    }
    
    func getNumber() -> Int{
        return numeroN
    }
    
    func mainClass(n: Int) -> Array<Int>{

        arrayResult.append(calculaFibonacci(n: n))
        arrayResult.append(calculaFatorial(n: n))
        
        //print("Fibonacci: ",calculaFibonacci(n: n))
        //print("Fatorial: ", calculaFatorial(n:n))
        
        return arrayResult
        

    }

    func calculaFibonacci(n: Int) -> Int{
        
        if(n <= 2){return 1}
        else {
            return calculaFibonacci(n: n-1) +
                   calculaFibonacci(n: n-2)
        }
    }

    func calculaFatorial(n: Int) -> Int{
        if n <= 1{return 1}
            
        else{return n*calculaFatorial(n: n-1)}
    }

}
