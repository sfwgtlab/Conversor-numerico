//
//  ToBinary.swift
//  ejemplo
//
//  Created by Irving on 19/08/23.
//

import Foundation

class ToBinary{
    var number: String
    
    init(number: String) {
        self.number = number
    }
    
    
    func OctalToBinary() -> String{
        var numberToReturn = ""
        let long = number.count - 1
        var character = ""
        
        for i in 0...long {
            let index = number.index(number.startIndex, offsetBy: i)
            character = String(number[index])
            if(switchHexaBinary(character: character) == "N/A"){
                numberToReturn = "N/A"
                break
            }else{
                numberToReturn += switchOctalBinary(character: character)
            }
        }
    
        return numberToReturn
    }
    
    func HexaToBinary() -> String{
        var numberToReturn = ""
        let long = number.count - 1
        var character = ""
        
        for i in 0...long {
            let index = number.index(number.startIndex, offsetBy: i)
            character = String(number[index])
            if(switchHexaBinary(character: character) == "N/A"){
                numberToReturn = "N/A"
                break
            }else{
                numberToReturn += switchHexaBinary(character: character)
            }
            
        }
        
        return numberToReturn
    }
    
    func switchOctalBinary(character: String) -> String {
        var numberToReturn = ""
        
        switch(character){
        case "0":
            numberToReturn = "000"
            break
        case "1":
            numberToReturn = "001"
            break
        case "2":
            numberToReturn = "010"
            break
        case "3":
            numberToReturn = "011"
            break
        case "4":
            numberToReturn = "100"
            break
        case "5":
            numberToReturn = "101"
            break
        case "6":
            numberToReturn = "110"
            break
        case "7":
            numberToReturn = "111"
            break
        default: numberToReturn = "N/A"
        }

        return numberToReturn
    }
    
    func switchHexaBinary(character: String) -> String {
        var numberToReturn = ""
        
        switch(character){
        case "0":
            numberToReturn = "0000"
            break
        case "1":
            numberToReturn = "0001"
            break
        case "2":
            numberToReturn = "0010"
            break
        case "3":
            numberToReturn = "0011"
            break
        case "4":
            numberToReturn = "0100"
            break
        case "5":
            numberToReturn = "0101"
            break
        case "6":
            numberToReturn = "0110"
            break
        case "7":
            numberToReturn = "0111"
            break
        case "8":
            numberToReturn = "1000"
            break
        case "9":
            numberToReturn = "1001"
            break
        case "A":
            numberToReturn = "1010"
            break
        case "B":
            numberToReturn = "1011"
            break
        case "C":
            numberToReturn = "1100"
            break
        case "D":
            numberToReturn = "1101"
            break
        case "E":
            numberToReturn = "1110"
            break
        case "F":
            numberToReturn = "1111"
            break
        default:  numberToReturn = "N/A"
        
        }

        return numberToReturn
    }
}
