//
//  ContentView.swift
//  ejemplo
//
//  Created by Irving on 22/07/23.
//

/*
 Applicacion que cambia los numeros
 binario, octal, decimal, hexadecimal
 
 */
import SwiftUI

struct ContentView: View {
    let txtCalc = "Calcular"
    let options: [String] = [
        "Binario", "Decimal", "Octal", "Hexadecimal"
    ]
    @State var showAlert: Bool = false
    @State var number = ""
    @State var alertText = ""
    @State var optionSelected = "Decimal"
    @State var optionSelectedToChange = "Binario"
    @State var numberChanged = ""
    @FocusState var textFocus: Bool
    
    
    
    var body: some View {
        
        VStack {
            
            Text("Conversor de sistemas numéricos")
                .foregroundColor(Color.white)
                .font(.system(size: 30))
                .multilineTextAlignment(.center)
                .padding(10)
            Spacer()
            VStack {
                Spacer()
                Text(numberChanged)
                    .foregroundColor(.white)
                TextField("Numero", text: $number)
                    .overlay(
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(lineWidth: 1)
                            .padding(-10)
                        
                    )
                    .padding()
                    .keyboardType(optionSelected != "Hexadecimal" ? .numberPad : .default)
                    .foregroundColor(.white)
                    .focused($textFocus)
                
                
                HStack{
                    Text("De: ")
                        .font(.headline)
                        .foregroundColor(Color.white)
                    Picker(
                        "Numero: ",
                        selection: $optionSelected,
                        content: {
                            ForEach(options.indices, id: \.self){ index in
                                Text(options[index])
                                    .tag(options[index])
                            }
                        }
                    )
                    .pickerStyle(.menu)
                    .accentColor(Color.white)
                    Text("A: ")
                        .font(.headline)
                        .foregroundColor(Color.white)
                    Picker(
                        "Numero: ",
                        selection: $optionSelectedToChange,
                        content: {
                            ForEach(options.indices, id: \.self){ index in
                                Text(options[index])
                                    .tag(options[index])
                            }
                        }
                    )
                    .pickerStyle(.menu)
                    .accentColor(Color.white)
                    
                }
                Spacer()
                VStack{
                    Button {
                        textFocus = false
                        numberChanged = SwitchOptions(option: optionSelected, optionToChange: optionSelectedToChange, number: number).validateNumber().0
                        alertText = SwitchOptions(option: optionSelected, optionToChange: optionSelectedToChange, number: number).validateNumber().1
                        
                        showAlert = numberChanged == "N/A"
                    } label: {
                        HStack{
                            Text(txtCalc)
                        }
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .padding(.horizontal)
                        .background(.blue   )
                        
                    }.foregroundColor(Color.black)
                        .alert("Imposible", isPresented: $showAlert ) {
                            Button("OK", role: .cancel){}
                        } message: {
                            Text(alertText)
                        }
                }
                
                
            }
            
            Spacer()
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .ignoresSafeArea()
        .padding()
        .background{
            Color.teal
        }
        .onTapGesture {
            textFocus = false
        }
        
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
