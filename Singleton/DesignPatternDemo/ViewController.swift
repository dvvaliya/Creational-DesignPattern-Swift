//
//  ViewController.swift
//  DesignPatternDemo
//
//  Created by dharmendra valiya on 25/04/20.
//  Copyright © 2020 dharmendra valiya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let count = 100
        for index in 0..<count {
            AppSettings.shared.set(value: index, forKey: String(index))
            
            DispatchQueue.concurrentPerform(iterations: count) { (index) in
                if let n = AppSettings.shared.object(forKey: String(index)) as? Int {
                    print(n)
                }
                
                AppSettings.shared.reset()
                
                DispatchQueue.concurrentPerform(iterations: count) { (index) in
                    print("Iteration index \(index)")
                    AppSettings.shared.set(value: index, forKey: String(index))
                }
            }
        }
        
    }

}
