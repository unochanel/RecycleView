//
//  PresentViewController.swift
//  RecycleView
//
//  Created by 宇野凌平 on 2018/08/24.
//  Copyright © 2018年 ryouheiuno. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class PresentViewController: UIViewController {
    private let disposeBag = DisposeBag()
    var index: Int!
    
    @IBOutlet weak var numberView: UIImageView!
    @IBOutlet weak var dismissButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        numberView.image = NumberType(rawValue: self.index)?.image()

        dismissButton.rx.tap.asDriver()
            .drive(onNext: { [weak self] in
                self?.dismiss(animated: true)
            })
            .disposed(by: disposeBag)
    }
}


