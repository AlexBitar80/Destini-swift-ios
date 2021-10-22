//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation
    
struct StoryBrain {
    
    var storyNumber = 0
    
    let storieContent = [
        Story(
            title: "O pneu do seu carro estourou em uma estrada sinuosa no meio do nada, sem sinal de celular. Você decide pedir carona. Uma picape enferrujada pára perto de você. Um homem com um chapéu de aba larga e olhos sem alma abre a porta do passageiro para você e pergunta: 'Precisa de uma carona, garoto?'",
            choice1: "Vou entrar. Obrigado pela ajuda!", choice1Destination: 2,
            choice2: "Melhor perguntar a ele se ele é um assassino primeiro.", choice2Destination: 1
        ),
        Story(
            title: "Ele balança a cabeça lentamente, sem se incomodar com a pergunta.",
            choice1: "Pelo menos ele é honesto. Eu vou entrar", choice1Destination: 2,
            choice2: "Espere, eu sei como trocar um pneu.", choice2Destination: 3
        ),
        Story(
            title: "Quando você começa a dirigir, o estranho começa a falar sobre seu relacionamento com a mãe. Ele fica cada vez mais irritado a cada minuto. Ele pede que você abra o porta-luvas. Dentro, você encontra uma faca ensanguentada, dois dedos decepados e uma fita cassete de Elton John. Ele pega o porta-luvas.",
            choice1: "Eu amo Elton John! Entregue a fita cassete para ele.", choice1Destination: 5,
            choice2: "É ele ou eu! Você pega a faca e o esfaqueia.", choice2Destination: 4
        ),
        Story(
            title: "O que? Um lá fora! Você sabia que os acidentes de trânsito são a segunda causa de morte acidental na maioria das faixas etárias de adultos?",
            choice1: "O", choice1Destination: 0,
            choice2: "Fim", choice2Destination: 0
        ),
        Story(
            title: "Conforme você quebra a grade de proteção e se inclina em direção às rochas irregulares abaixo, você reflete na duvidosa sabedoria de esfaquear alguém enquanto a pessoa está dirigindo um carro em que você está.",
            choice1: "O", choice1Destination: 0,
            choice2: "Fim", choice2Destination: 0
        ),
        Story(
            title: "Você se relaciona com o assassino enquanto entoa versos de 'Você pode sentir o amor esta noite' Ele o deixa na próxima cidade. Antes de ir, ele pergunta se você conhece algum bom lugar para despejar corpos. Você responde: 'Experimente o cais.'",
            choice1: "O", choice1Destination: 0,
            choice2: "Fim", choice2Destination: 0
        )
    ]
    
    func getStoryTitle() -> String {
        return storieContent[storyNumber].title
    }
    
    func getChoice1() -> String {
        return storieContent[storyNumber].choice1
    }
    
    func getChoice2() -> String {
        return storieContent[storyNumber].choice2
    }
    
    mutating func nextStory(userChoice: String) {
        
        let currentStory = storieContent[storyNumber]
        if userChoice == currentStory.choice1 {
            storyNumber = currentStory.choice1Destination
        } else if userChoice == currentStory.choice2 {
            storyNumber = currentStory.choice2Destination
        }
    }
    
}
