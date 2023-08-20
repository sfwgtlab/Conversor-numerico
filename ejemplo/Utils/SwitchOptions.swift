//
//  SwitchOptions.swift
//  ejemplo
//
//  Created by Irving on 19/08/23.
//

import Foundation

class SwitchOptions{
    
    
    var option: String
    var optionToChange: String
    var number: String
    
    init(option: String, optionToChange: String, number: String) {
        self.option = option
        self.optionToChange = optionToChange
        self.number = number
    }

    
    func changeNumbers() -> (String, String){
        let fromDecimal = FromDecimal()
        
        var resultado: String = ""
        var mensaje: String = ""
        switch(option){
        case "Binario" :do {
            switch(optionToChange){
            case "Binario":
                resultado = imposible()
                mensaje = "No se puede elegir sistemas iguales"
                break
            case "Decimal":
                resultado = ToDecimal(number: number, base: 2).someToDecimal()
                break
            case "Octal":
                resultado = FromBinary(binary: number).binaryToOctal()
                break
            case "Hexadecimal":
                resultado = FromBinary(binary: number).binaryToHexa()
                break
            default:
                print("Selecciona una opcion valida")
            }
        };break;
        case "Decimal": do{
            switch(optionToChange){
            case "Binario":
                fromDecimal.number = Int(number)!
                fromDecimal.base = 2
                resultado = fromDecimal.decimalToOther()
                break
            case "Decimal":
                resultado = imposible()
                mensaje = "No se puede elegir sistemas iguales"
                break
            case "Octal":
                fromDecimal.number = Int(number)!
                fromDecimal.base = 8
                resultado = fromDecimal.decimalToOther()
                break
            case "Hexadecimal":
                fromDecimal.number = Int(number)!
                fromDecimal.base = 16
                resultado = fromDecimal.decimalToOther()
                break
            default:
                print("Selecciona una opcion valida")
            }
        };break
        case "Octal": do{
            switch(optionToChange){
            case "Binario":
                resultado = ToBinary(number: number).OctalToBinary()
                break
            case "Decimal":
                resultado = ToDecimal(number: number, base: 8).someToDecimal()
                break
            case "Octal":
                resultado = imposible()
                mensaje = "No se puede elegir sistemas iguales"
                break
            case "Hexadecimal":
                resultado =  OctalHexa(number: number).octalToHexa()
                break
            default:
                print("Selecciona una opcion valida")
            }
        };break
        case "Hexadecimal": do{
            switch(optionToChange){
            case "Binario":
                resultado = ToBinary(number: number).HexaToBinary()
                mensaje = "Formato inválido"
                break
            case "Decimal":
                resultado = ToDecimal(number: number, base: 16).someToDecimal()
                mensaje = "Formato inválido"
                break
            case "Octal":
                resultado = OctalHexa(number: number).hexaToOctal()
                mensaje = "Formato inválido"
                break
            case "Hexadecimal":
                resultado = imposible()
                mensaje = "No se puede elegir sistemas iguales"
                break
            default:
                print("Selecciona una opcion valida")
            }
        };break
        default:
            print("Selecciona una opcion valida")
        }
        
        return (resultado, mensaje)
    }
    
    func imposible() -> String{
        return "N/A"
    }
    
    
    func validateNumber() -> (String, String) {
        var resultado = ""
        var mensaje = ""
        if(number == ""){
            resultado = "N/A"
            mensaje = "Debes ingresar un número"
        }else{
            resultado = changeNumbers().0
            if(resultado == "N/A"){
                mensaje = changeNumbers().1
            }
        }
        
        return (resultado, mensaje)
    }
}
