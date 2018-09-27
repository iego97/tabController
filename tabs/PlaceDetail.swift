//
//  PlaceDetail.swift
//  tabs
//
//  Created by Alumno on 27/09/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit

class PlaceDetail: UIViewController
{
    
    
    @IBOutlet weak var imageViewLugar: UIImageView!
    @IBOutlet weak var lblDescripcion: UILabel!
    
    var lugar: Lugar?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        if let lugarActual = lugar
        {
            self.title = lugar?.nombre
            
            if let descripcion = lugar?.descripcion
            {
                lblDescripcion.text = descripcion
            }
            
            if let imagen = lugar?.imagen
            {
                imageViewLugar.image = imagen
            }
            
            
        }
    }
    
}
