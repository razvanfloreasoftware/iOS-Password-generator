//
//  ViewController.swift
//  passwordgenerator
//
//  Created by Razvan Florea on 03/10/2021.
//

import UIKit

class ViewController: UIViewController {
    
    let wordsArray = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","r","s","t","u","v","x","z"]
    lazy var wordsUpperArray = {
        self.wordsArray.map { $0.uppercased() }
    }
    let numberArray = ["0","1","2","3","4","5","6","7","8","9"]
    let complexAsciArray = ["!", "@", "£", "$", "%", "&"]
    var stringSimplu = ""
    var stringComplex = ""
    var lastString = ""
    


    @IBOutlet weak var simplePassword: UILabel!
    
    @IBOutlet weak var complexPassword: UILabel!
    

    @IBAction func simplePwButton(_ sender: UIButton) {
        
        stringSimplu = (0...8).map { _ in
            wordsArray[Int.random(in:0...22)]
        }.joined()
        
        simplePassword.text = stringSimplu
        }
    
    
    @IBAction func complexPwButton(_ sender: UIButton) {
        stringComplex = ""
        let finalComplexArray = [wordsArray[Int.random(in:0...22)], wordsArray[Int.random(in:0...22)], wordsArray[Int.random(in:0...22)], wordsArray[Int.random(in:0...22)], wordsArray[Int.random(in:0...22)], wordsArray[Int.random(in:0...22)], wordsArray[Int.random(in:0...22)], numberArray[Int.random(in:0...9)],
            numberArray[Int.random(in:0...9)],
            complexAsciArray[Int.random(in:0...5)]]
        
            for element in finalComplexArray{
                stringComplex = stringComplex + "\(element)"
                }
                complexPassword.text = stringComplex
        }
    
    @IBAction func appClose(_ sender: UIButton) {
     //  let close = passwordgenerator.terminate()
    }
    
    }


