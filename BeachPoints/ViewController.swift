//
//  ViewController.swift
//  BeachPoints
//
//  Created by Marcelo Rodrigues de Sousa on 03/09/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rightPoints: UIButton!
    @IBOutlet weak var leftPoints: UIButton!
    let possibleRightPoints = [#imageLiteral(resourceName: "DarkBlue0"),#imageLiteral(resourceName: "DarkBlue15"),#imageLiteral(resourceName: "DarkBlue30"),#imageLiteral(resourceName: "DarkBlue40")]
    let possibleLeftPoints = [#imageLiteral(resourceName: "LightBlue0"),#imageLiteral(resourceName: "LightBlue15"),#imageLiteral(resourceName: "LightBlue30"),#imageLiteral(resourceName: "LightBlue40")]
    var leftCurrentPoints = 0
    var rightCurrentPoints = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rightPoints.setImage(possibleRightPoints[0], for: .normal)
        leftPoints.setImage(possibleLeftPoints[0], for: .normal)
    }
    
    @IBAction func leftButtonTapped(_ sender: UIButton) {
        if(leftCurrentPoints < 3){
            leftCurrentPoints += 1
            leftPoints.setImage(possibleLeftPoints[leftCurrentPoints], for: .normal)
        }
        else{
            rightPoints.setImage(possibleRightPoints[0], for: .normal)
            leftPoints.setImage(possibleLeftPoints[0], for: .normal)
            leftCurrentPoints = 0
        }
    }
    
    @IBAction func rightButtonTapped(_ sender: UIButton) {
        if(rightCurrentPoints < 3){
            rightCurrentPoints += 1
            rightPoints.setImage(possibleRightPoints[rightCurrentPoints], for: .normal)
        }
        else{
            rightPoints.setImage(possibleRightPoints[0], for: .normal)
            leftPoints.setImage(possibleLeftPoints[0], for: .normal)
            rightCurrentPoints = 0
        }
    }
    
}

