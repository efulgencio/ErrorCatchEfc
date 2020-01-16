//
//  ValidarString.swift
//  ErrorCatchEfc
//
//  Created by eduardo fulgencio on 15/01/2020.
//  Copyright © 2020 Eduardo Fulgencio Comendeiro. All rights reserved.
//

import Foundation

enum ValidationStringError: Error {
    case Vacia
    case Nulo
    case Mayusculas
    case Minusculas
    case Capitalize
    static let tipos = [Mayusculas, Minusculas, Capitalize]
}

class ValidationString {
    func validate(text: String?) throws {
        
        guard let _ = text else {
            throw ValidationStringError.Nulo
        }
        guard let text = text, !text.isEmpty else {
            throw ValidationStringError.Vacia
        }
        
        try validateMayusculas(text: text)
        try validateMinusculas(text: text)
        
    }
    
    func validateMayusculas(text: String?) throws  {
        let mayusculas = text!.uppercased()
        if (mayusculas.first! != text!.first) {
            throw ValidationStringError.Mayusculas
        }
    }
    
    func validateMinusculas(text: String?) throws {
        let mayusculas = text!.lowercased()
        if (mayusculas.first! != text!.first) {
           throw ValidationStringError.Minusculas
        }
    }
    
}
