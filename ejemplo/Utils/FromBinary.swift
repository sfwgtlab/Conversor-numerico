//
//  FromBinary.swift
//  ejemplo
//
//  Created by Irving on 17/08/23.
//

import Foundation

class FromBinary {
    var binary: String
    
    init(binary: String) {
        self.binary = binary
    }
    
    func binaryToOctal() -> String{
        var numberToReturn = ""
        let long = binary.count - 1
        var characters = "";
        for i in stride(from: long, through: 0, by: -1){
            let index = binary.index(binary.startIndex, offsetBy: i)
            characters = String(binary[index]) + characters
            if(characters.count == 3){
               numberToReturn = switchOctal(characters: characters) + numberToReturn
                characters = ""
            }
            
            if(i == 0 ){
                switch(characters.count){
                case 2: characters = "0"+characters
                    break
                case 1: characters = "00"+characters
                    break
                default: break
                }
                numberToReturn = switchOctal(characters: characters) + numberToReturn
            }
        }
        return numberToReturn
    }
    
    func binaryToHexa() -> String{
        var numberToReturn = ""
        let long = binary.count - 1
        var characters = "";
        for i in stride(from: long, through: 0, by: -1){
            let index = binary.index(binary.startIndex, offsetBy: i)
            characters = String(binary[index]) + characters
            if(characters.count == 4){
               numberToReturn = switchHexa(characters: characters) + numberToReturn
                characters = ""
            }
            
            if(i == 0 ){
                switch(characters.count){
                case 3: characters = "0"+characters
                    break
                case 2: characters = "00"+characters
                    break
                case 1: characters = "000"+characters
                    break
                default: break
                }
                numberToReturn = switchHexa(characters: characters) + numberToReturn
            }
        }
        return numberToReturn
    }
    
    func switchOctal(characters: String) -> String{
        var numberToReturn = ""
        switch(characters){
        case "000":
            numberToReturn = "0"
            break
        case "001":
            numberToReturn = "1"
            break
        case "010":
            numberToReturn = "2"
            break
        case "011":
            numberToReturn = "3"
            break
        case "100":
            numberToReturn = "4"
            break
        case "101":
            numberToReturn = "5"
            break
        case "110":
            numberToReturn = "6"
            break
        case "111":
            numberToReturn = "7"
            break
        default: break
        }
        
        return numberToReturn
    }
    
    
    func switchHexa(characters: String) -> String{
        var numberToReturn = ""
        switch(characters){
        case "0000":
            numberToReturn = "0"
            break
        case "0001":
            numberToReturn = "1"
            break
        case "0010":
            numberToReturn = "2"
            break
        case "0011":
            numberToReturn = "3"
            break
        case "0100":
            numberToReturn = "4"
            break
        case "0101":
            numberToReturn = "5"
            break
        case "0110":
            numberToReturn = "6"
            break
        case "0111":
            numberToReturn = "7"
            break
        case "1000":
            numberToReturn = "8"
            break
        case "1001":
            numberToReturn = "9"
            break
        case "1010":
            numberToReturn = "A"
            break
        case "1011":
            numberToReturn = "B"
            break
        case "1100":
            numberToReturn = "C"
            break
        case "1101":
            numberToReturn = "D"
            break
        case "1110":
            numberToReturn = "E"
            break
        case "1111":
            numberToReturn = "F"
            break
        default: break
        }
        
        return numberToReturn
    }
}
