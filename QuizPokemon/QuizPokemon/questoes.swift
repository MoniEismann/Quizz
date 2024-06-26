//
//  questoes.swift
//  QuizPokemon
//
//  Created by Igor fe Castro Figueiredo on 03/05/24.
//

import Foundation

struct Questao {
    var titulo: String
    var respostas: [String]
    var respostaCorreta: Int
}

let questoes: [Questao] = [
    Questao(titulo: "Quantos doces do Magikarp são necessarios para evoluir ele para Gyarados?", respostas: ["50", "200", "400"], respostaCorreta: 2),
    Questao(titulo: "Quantos pokemons há na pokedex da primeira geração?", respostas: ["149", "151", "150"], respostaCorreta: 1),
    Questao(titulo: "Qual o tipo da Kahuna de Akala?", respostas: ["Pedra", "Fogo", "Sombrio"], respostaCorreta: 0)
]
