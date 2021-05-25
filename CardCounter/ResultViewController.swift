//
//  ResultViewController.swift
//  CardCounter
//
//  Created by Sema on 5/25/21.
//

import UIKit

class ResultViewController: UIViewController {
    let inputVC = InputViewController()
    var sum = 0
    var numOfCards = 0
    var arrayOfValueAndCount : [ValueCount] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray6
        title = "Result"
        inputVC.delegate = self
        print("Sum is \(sum)")
        print("numOfCards is \(numOfCards)")
        print("arrayOfValueAndCount is \(arrayOfValueAndCount)")
        
    }
}

extension ResultViewController : InputViewControllerDelegate {
    func receiveData(sum: Int, cards: Int, valueAndCountArray: [ValueCount]) {
        print("Im triggered")
        self.sum = sum
        self.numOfCards = cards
        self.arrayOfValueAndCount = valueAndCountArray
    }
}
