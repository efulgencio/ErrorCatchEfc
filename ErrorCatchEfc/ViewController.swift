//
//  ViewController.swift
//  ErrorCatchEfc
//
//  Created by eduardo fulgencio on 15/01/2020.
//  Copyright © 2020 Eduardo Fulgencio Comendeiro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    override func viewWillAppear(_ animated: Bool) {
        
         let validation = ValidationString()
           let cadena = "Palabras"
           do {
               try validation.validateMayusculas(text: cadena)
               try validation.validateMinusculas(text: cadena)
               print("Ha pasado las validaciones.")
           } catch ValidationStringError.Minusculas {
               print("El texto no está en minúsulas.")
               return
           } catch ValidationStringError.Mayusculas {
               print("El texto no está en mayúscular")
               return
           } catch {
               print("Error no controlado")
               return
           }
    }
}

