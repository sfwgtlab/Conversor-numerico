//
//  FromDecimal.swift
//  ejemplo
//
//  Created by Irving on 17/08/23.
//

import Foundation

class FromDecimal {
    private var _number: Int = 0
    private var _base: Float = 0.0
    
    var number: Int {
        get{return self._number}
        set{_number = newValue}
    }
    var base: Float{
        get{return self._base}
        set{_base = newValue}
        
    }
    
    func decimalToOther() -> String{
        var numberToReturn = ""
        var stop = false;
        var restante:Float = Float(number)
        var restanteInt = 0
        var decimalPart: Float = 0.0
        var multiplication: Float = 0.0
        
        repeat {
            restante = restante / base
            decimalPart = restante.truncatingRemainder(dividingBy: 1)
            restanteInt = Int(restante)
            restante = Float(restanteInt)
            multiplication = decimalPart * base
            if(number == 16){
                switch(multiplication){
                case 10:
                    numberToReturn += "A"
                    break;
                case 11:
                    numberToReturn += "B"
                    break;
                case 12:
                    numberToReturn += "C"
                    break;
                case 13:
                    numberToReturn += "D"
                    break;
                case 14:
                    numberToReturn += "E"
                    break;
                case 15:
                    numberToReturn += "F"
                    break;
                default:
                    numberToReturn += String(Int(multiplication))
                }
            }else{
                numberToReturn += String(Int(multiplication))
            }
            
            
            if(restante < base){
                stop = true
                numberToReturn += String(Int(restante))
            }else {stop = false}
                
        } while stop == false
        
        let numberToReturnStr = String(numberToReturn.reversed())
        return numberToReturnStr
    }
}
