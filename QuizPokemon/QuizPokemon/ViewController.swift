//
//  ViewController.swift
//  QuizPokemon
//
//  Created by Igor fe Castro Figueiredo on 02/05/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var botaoIniciar: UIButton!
    
    @IBAction func botaoPressionado(_ sender: Any) {
        print("O botão foi pressionado!")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        configurarLayout()
    }
    func configurarLayout(){
        navigationItem.hidesBackButton = true
        botaoIniciar.layer.cornerRadius = 12.0
    }

}
