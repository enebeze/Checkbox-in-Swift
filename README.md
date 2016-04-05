# Checkbox-in-Swift

Checkbox Button fácil de ser utilizado em seus projetos.

    // Cria e adiciona o checkbox com a cor default (blue)
    let chkBlue = UICheckboxButton(frame: CGRectMake(50, 200, 29, 29))
    chkBlue.delegate = self
    view.addSubview((chkBlue))
    
    // Função obrigatório para do Delegate (UICheckboxButtonDelegate)
    func didClickCheckbox(checkBox: UICheckboxButton) {
        
        let isMarcado = checkBox.isChecked ? "Marcou" : "Desmarcou"
        
        // Exibe a cor do checkbox que foi clicado
        print("Clicou e \(isMarcado) o checkbox \(checkBox.color.rawValue)")
    }
    
    Veja mais em http://ebenezersilva.com/2015/03/05/checkbox-customizado-em-swift/
    
Checkbox in Swift
