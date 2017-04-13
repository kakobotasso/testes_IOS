//
//  ViewController.swift
//  testesProject
//
//  Created by Usuário Convidado on 12/04/17.
//  Copyright © 2017 Kako Botasso. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfIdade: UITextField!
    @IBOutlet weak var lblMensagem: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        lblMensagem.text = ""
    }


    @IBAction func showMessage(_ sender: Any) {
        // "Nome: Kako \n Idade 24 anos"
        let name = getName(name: tfName.text!)
        let age = getAge(age: Int(tfIdade.text!)!)
        
        lblMensagem.text = "\(name)\n\(age)"
    }
    
    func getName(name: String) -> String {
        return "Nome: \(name)"
    }
    
    func getAge(age: Int) -> String {
        if age > 45 {
            return "Idade (senhor): \(age) anos"
        }
        
        return "Idade: \(age) anos"
        
    }
    
    
}

