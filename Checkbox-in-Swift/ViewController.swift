//
//  ViewController.swift
//  Checkbox-in-Swift
//
//  Created by Ebenezer on 05/04/16.
//  Copyright © 2016 Ebenezer. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICheckboxButtonDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Cria e adiciona o checkbox com a cor default (blue)
        let chkBlue = UICheckboxButton(frame: CGRectMake(50, 200, 29, 29))
        chkBlue.delegate = self
        view.addSubview((chkBlue))
        
        // Cria e adiciona o checkbox com a cor verde
        let chkGreen = UICheckboxButton(frame: CGRectMake(100, 200, 29, 29))
        chkGreen.delegate = self
        chkGreen.color = .Green
        view.addSubview((chkGreen))
        
        // Cria e adiciona o checkbox com a cor rosa
        let chkPink = UICheckboxButton(frame: CGRectMake(150, 200, 29, 29))
        chkPink.delegate = self
        chkPink.color = .Pink
        view.addSubview((chkPink))
        
    }

    func didClickCheckbox(checkBox: UICheckboxButton) {
        
        let isMarcado = checkBox.isChecked ? "Marcou" : "Desmarcou"
        
        // Exibe a cor do checkbox que foi clicado
        print("Clicou e \(isMarcado) o checkbox \(checkBox.color.rawValue)")
    }
    


}

