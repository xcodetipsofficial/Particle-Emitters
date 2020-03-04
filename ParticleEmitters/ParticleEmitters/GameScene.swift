//
//  GameScene.swift
//  ParticleEmitters
//
//  Created by Kyle Wilson on 2020-02-25.
//  Copyright © 2020 Xcode Tips. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    let fireNode = SKEmitterNode(fileNamed: "Fire.sks")
    let magicNode = SKEmitterNode(fileNamed: "Magic.sks")
    let rainNode = SKEmitterNode(fileNamed: "Rain.sks")
    let smokeNode = SKEmitterNode(fileNamed: "Smoke.sks")
    let snowNode = SKEmitterNode(fileNamed: "Snow.sks")
    let sparkNode = SKEmitterNode(fileNamed: "Spark.sks")
    let firefliesNode = SKEmitterNode(fileNamed: "Fireflies.sks")
    let bokehNode = SKEmitterNode(fileNamed: "Bokeh.sks")
    
    var nodes = [SKEmitterNode]()
    
    var randomNumber: Int?
    
    override func didMove(to view: SKView) {
        nodes = [fireNode!, magicNode!, rainNode!, smokeNode!, snowNode!, sparkNode!, firefliesNode!, bokehNode!]
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("began")
        randomNumber = Int.random(in: 0..<8)
        addChild(nodes[randomNumber!])
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("moving")
        nodes[randomNumber!].position = (touches.first?.location(in: self))!
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("ended")
        nodes[randomNumber!].removeFromParent()
    }

}
