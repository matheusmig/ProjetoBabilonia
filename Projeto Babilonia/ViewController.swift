//
//  ViewController.swift
//  Projeto Babilonia
//
//  Created by Matheus Mignoni on 2015-03-19.
//  Copyright (c) 2015 Matheus Mignoni. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /**
    *   FUNCOES CRIADAS POR MIM
    *
    */
    
    //variavel do nosso uiimageview
    @IBOutlet weak var lugarMostrarFoto: UIImageView!
    
    //funcao que é ativada ao apertar no botao "Galeria Fotos"
    @IBAction func abrirGaleriaFotos(sender: AnyObject) {
        var pegadorPhoto        = UIImagePickerController()
        pegadorPhoto.delegate   = self
        pegadorPhoto.sourceType = .PhotoLibrary
        self.presentViewController(pegadorPhoto, animated: true, completion: nil)
    }
    
    //Funcao para carregar a imagem para dentor do uiimageview
    func imagePickerController(picker: UIImagePickerController!, didFinishPickingMediaWithInfo info: NSDictionary!) {
        self.dismissViewControllerAnimated(true, completion: nil);
        
        let gotImage = info[UIImagePickerControllerOriginalImage] as UIImage
        
        self.lugarMostrarFoto.setValue(gotImage, forKey: "image")
    }
}

