//
//  OctalHexa.swift
//  ejemplo
//
//  Created by Irving on 19/08/23.
//

import Foundation

class OctalHexa{
    var number: String
    
    init(number: String) {
        self.number = number
    }
    
    func octalToHexa() -> String {
        var numberToReturn = ""
        
        numberToReturn = ToBinary(number: number).OctalToBinary()
        if(numberToReturn != "N/A"){
            numberToReturn = FromBinary(binary: numberToReturn).binaryToOctal()
        }
        
        
        print("deberia ser")
        print(numberToReturn)
        
        return numberToReturn
    }
    
    func hexaToOctal() -> String {
        var numberToReturn = ""
        
        numberToReturn = ToBinary(number: number).HexaToBinary()
        
        if(numberToReturn != "N/A"){
            numberToReturn = FromBinary(binary: numberToReturn).binaryToOctal()
        }
        
        
        return numberToReturn
    }

}
