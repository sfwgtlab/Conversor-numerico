//
//  ToDecimal.swift
//  ejemplo
//
//  Created by Irving on 18/08/23.
//

import Foundation

class ToDecimal{
    var number: String
    var base: Decimal
    
    init(number: String, base: Decimal) {
        self.number = number
        self.base = base
    }
    
    func someToDecimal() -> String{
        var numberToReturn = ""
        let long = number.count - 1
        var exp = long
        var sum = 0.0
        var exponencial: Int = 0
        var multiplicacion = 0
        
        for i in 0...long {
            let index = number.index(number.startIndex, offsetBy: i)
           
                if(type(of: number[index]) == Character.self){
                    switch(String(number[index])){
                    case "A":
                        multiplicacion = 10
                        break
                    case "B":
                    multiplicacion = 11
                        break
                    case "C":
                    multiplicacion = 12
                        break
                    case "D":
                    multiplicacion = 13
                        break
                    case "E":
                    multiplicacion = 15
                        break
                    case "F":
                    multiplicacion = 15
                        break
                    default: do {
                        if(type(of: number[index]) == Character.self){
                             numberToReturn = "N/A"
                            return numberToReturn
                        }else{
                            
                            multiplicacion = Int(String(number[index]))!
                        }
                    }
                   
                    }
                }else{
                    multiplicacion = Int(String(number[index]))!
                }
            
            
            exponencial = Int(truncating: pow(base, exp) as NSNumber)
            sum += Double(exponencial * multiplicacion)
            exp = exp - 1
        }
        numberToReturn = String(Int(sum))
        return numberToReturn
    }
    
}
