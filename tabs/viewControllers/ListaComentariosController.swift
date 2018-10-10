//
//  ListaComentariosController.swift
//  tabs
//
//  Created by Alumno on 09/10/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit

class ListaComentariosController : UIViewController, UITableViewDataSource, UITableViewDelegate
{
    
     var comentarios : [Comentario]?
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (comentarios?.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaComentario") as! CeldaComentario
        celda.lblDetalleUsuario.text =
            comentarios?[indexPath.row].usuario
        celda.lblDetalleComentario.text = comentarios?[indexPath.row].comentario
        
        return celda
    }
    
    
    
    
    
    
    
   
    
    
    
}
