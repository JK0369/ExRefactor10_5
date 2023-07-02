//
//  ViewController.swift
//  ExRefactor10_5
//
//  Created by 김종권 on 2023/07/02.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

struct Asset {
    var countOfImages = 5
    var colors = ["orange", "blue"]
    var total = 0
    
    mutating func calculateAsset() {
        total = countOfImages + colors.count
    }
    
    func getCalculatedAsset() -> Int {
        countOfImages + colors.count
    }
    
    mutating func main() {
        // 1.
        calculateAsset()
        
        // 2.
        total = getCalculatedAsset()
    }
}
