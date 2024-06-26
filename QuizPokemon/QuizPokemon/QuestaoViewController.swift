//
//  QuestaoViewController.swift
//  QuizPokemon
//
//  Created by Igor fe Castro Figueiredo on 03/05/24.
//

import UIKit

class QuestaoViewController: UIViewController {
    
    var pontuacao = 0
    var numeroQuestao = 0
    
    @IBOutlet var botoesResposta: [UIButton]!
    
    @IBOutlet weak var tituloQuestaoLabel: UILabel!
   
    
    @IBAction func respostaBotaoPressionado(_ sender: UIButton) {
        let usuarioAcertouResposta = questoes [numeroQuestao].respostaCorreta == sender.tag
        if usuarioAcertouResposta { pontuacao += 1; sender.backgroundColor = UIColor(red: 11/255, green: 161/255, blue: 53/255, alpha: 1.0)
        } else {
            sender.backgroundColor = UIColor(red: 211/255, green: 17/255, blue: 17/255, alpha: 1.0)
    }
        
        if numeroQuestao < questoes.count - 1 {
            numeroQuestao += 1; Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(configurarQuestao), userInfo: nil, repeats: false)
        } else {
            navegaParaTelaDesempenho()
        }
        
        func navegaParaTelaDesempenho(){
            performSegue(withIdentifier: "IrParaTelaDesempenho", sender: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        configurarLayout()
        configurarQuestao()
    }
    
    func configurarLayout(){
        navigationItem.hidesBackButton = true
        tituloQuestaoLabel.numberOfLines = 0
        tituloQuestaoLabel.textAlignment = .center
        for botao in botoesResposta {
            botao.layer.cornerRadius = 12.0
        }
    }
    
    @objc func configurarQuestao(){
        tituloQuestaoLabel.text = questoes [numeroQuestao].titulo
        for botao in botoesResposta {
            let tituloBotao = questoes[numeroQuestao].respostas[botao.tag]
            
            botao.setTitle(tituloBotao, for: .normal)
            botao.backgroundColor = UIColor(red: 105/255, green: 185/255, blue: 196/255, alpha: 1.0)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let desempenhoVC = segue.destination as? DesempenhoViewController else
        {
            return
        }
        desempenhoVC.pontuacao = pontuacao
    }
}
