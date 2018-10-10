//
//  Datos.swift
//  tabs
//
//  Created by Alumno on 09/10/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit

class Datos{
    
    static var platillos : [Platillo] = [
            Platillo(nombre: "Hot Dog", imagenLista: UIImage(named: "jodo")!, imagenDetalle: UIImage(named: "jodo")!, descripcion: "Típico dogo Sonorense muy weno", comentarios: [Comentario(usuario: "El jose", comentario: "taba weno")]),
            Platillo(nombre: "Pizza", imagenLista: UIImage(named: "pizza")!, imagenDetalle: UIImage(named: "pizza")!, descripcion: "Pizza con frijol típica Sonorense", comentarios: [Comentario(usuario: "El rafa", comentario: "Ta wena la pizza")]),
            Platillo(nombre: "Sushi", imagenLista: UIImage(named: "sushi")!, imagenDetalle: UIImage(named:"sushi")!, descripcion: "Sushi de res típico Sonorense", comentarios: [Comentario(usuario: "El pablo", comentario: "Taba weno el shushi")]),
            Platillo(nombre: "Manteconcha", imagenLista: UIImage(named: "manteconcha")!, imagenDetalle: UIImage(named: "manteconcha")!, descripcion: "Manteconcha deliciosa con salsita de chiltepin", comentarios: [Comentario(usuario: "La minne", comentario: "Taba mala la manteconcha")]),
            Platillo(nombre: "Mollete", imagenLista: UIImage(named: "mollete")!, imagenDetalle: UIImage(named: "mollete")!, descripcion: "Mollete Sonorense muy bueno", comentarios: [Comentario(usuario: "El Emiliano", comentario: "taba weno")])
                     
    ]
    
}
