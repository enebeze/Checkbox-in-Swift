//
//  UICheckboxButton.swift
//  Checkbox-in-Swift
//
//  Created by Ebenezer on 05/04/16.
//  Copyright © 2016 Ebenezer. All rights reserved.
//

import UIKit

protocol UICheckboxButtonDelegate {
    func didClickCheckbox(checkBox: UICheckboxButton)
}

class UICheckboxButton: UIButton {
    
    var delegate: UICheckboxButtonDelegate?

    var imgView: UIImageView!
    var isChecked: Bool = false {
        didSet {
            showCurrentState()
        }
    }
    var color: Color = Color() {
        didSet {
            showCurrentState()
        }
    }
    
    enum Color : String {
        case Blue = "blue"
        case Green = "green"
        case Pink = "pink"
        
        init() {
            self = .Blue
        }
    }
    
    struct StatusCheckedBox {
        static let Checked = "checked"
        static let Unchecked = "unchecked"
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setup()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setup()
    }
    
    
    private func showCurrentState() {
        
        // Altera a imagem
        if isChecked {
            imgView.image = UIImage(named: getNameImage(StatusCheckedBox.Checked))
        } else {
            imgView.image = UIImage(named: getNameImage(StatusCheckedBox.Unchecked))
        }
    }
    
    private func getNameImage(type:String) -> String {
        return "\(type)-\(self.color.rawValue)"
    }
    
    private func setup() {
        
        // Inicializa ImageView
        imgView = UIImageView(frame: CGRectMake(0, 0, 29, 29))
        // Adiciona a viewImage
        self.addSubview(imgView)
        
        // Adiciona o método clicar do botão
        self.addTarget(self, action: #selector(UICheckboxButton.checkBoxClicked), forControlEvents: UIControlEvents.TouchUpInside)
        
        // Inicializa o estado
        showCurrentState()
    }
    
    func checkBoxClicked() {
        
        // Marca ou desmarca o checkbox
        isChecked = !isChecked
        
        // Chama o método do delegado
        if let del = delegate {
            del.didClickCheckbox(self)
        }
    }
    

}
