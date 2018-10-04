//
//  PlaceDetail.swift
//  tabs
//
//  Created by Alumno on 27/09/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit

class PlaceDetail: UIViewController {
    
    
    @IBOutlet weak var imageViewLugar: UIImageView!
    @IBOutlet weak var lblDescripcion: UILabel!
    
    var lugar: Lugar?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        if let lugarActual = lugar{
            
            self.title = lugarActual.nombre
            
            if let descripcion = lugarActual.descripcion
            {
                lblDescripcion.text = descripcion
            }else{
                lblDescripcion.text = "-"
            }
            
            
            if let imagen = lugarActual.imagen
            {
                imageViewLugar.image = imagen
                
            }else{
                
                imageViewLugar.image = nil
            }
            
            
        }
    }
    
}
