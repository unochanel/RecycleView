//
//  ViewController.swift
//  RecycleView
//
//  Created by 宇野凌平 on 2018/08/22.
//  Copyright © 2018年 ryouheiuno. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {
    private var numberImageView: NumberImageView!
    private let disposeBag    = DisposeBag()
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureNumber()
    }
    
    private func configureNumber() {
        let numberType: [NumberType] = [.one, .two, .three]
        
        numberType
            .enumerated()
            .forEach { index, number in
                numberImageView = NumberImageView.create(numberType: number)
                numberImageView.frame.size = NumberImageView.size()
                numberImageView.frame.origin.x = NumberImageView.size().width * CGFloat(index)
                
                scrollView.addSubview(numberImageView)
        }
    }
    
}


