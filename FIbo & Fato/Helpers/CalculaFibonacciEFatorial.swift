//
//  CalculaNumber.swift
//  FIbo & Fato
//
//  Created by zupper on 29/10/19.
//  Copyright © 2019 Risonaldo. All rights reserved.
//

import UIKit

struct CalculaFibonacciEFatorial {

    static func calculaFibonacci(enesimoNumber: Int) -> Int {
        if enesimoNumber == 0 {
            return 0
        } else if enesimoNumber <= 2 {
            return 1
        } else {
            return calculaFibonacci(enesimoNumber: enesimoNumber-1) + calculaFibonacci(enesimoNumber: enesimoNumber-2)
        }
    }

    static func calculaFatorial(numberToFatorial: Int) -> Int {
        return numberToFatorial <= 1 ? 1: numberToFatorial*calculaFatorial(numberToFatorial: numberToFatorial-1)
    }
}
