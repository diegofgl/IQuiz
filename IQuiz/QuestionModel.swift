//
//  Question.swift
//  IQuiz
//
//  Created by Diego Rodrigues on 25/07/23.
//

import Foundation

struct Question {
    var title: String
    var response: [String]
    var responseCorect: Int
}

let questions: [Question] = [
    Question(title: "O que significa\nValar Dohaeris?", response: ["Todos os homens devem morrer","Todos os homens devem servir", "Todos os homens devem sofrer"], responseCorect: 1),
    Question(title: "Quais são os nomes\ndos 3 dragões de\nDaenerys Targaryen?", response: ["Kall, Tyrell, Dracarys", "Rhaegal, Drogon e Viserion", "Shenlong, Tiamat, Mushun"], responseCorect: 1),
    Question(title: "Qual o nome dos\nLobos de estimação de\nJon Snow, Sansa e Aria?", response: ["Xarky, Hanna, Siryum", "Gael, Lipstick, Revenge", "Fantasma, Lady e Nymeria"], responseCorect: 2),
    Question(title: "Quem é o responsável por matar o\nRei da Noite?", response: ["Tyron", "Cersei", "Arya"], responseCorect: 2),
    Question(title: "Com quantos dragões Daenerys\nterminou a série?", response: ["1", "2", "3"], responseCorect: 0),


]
