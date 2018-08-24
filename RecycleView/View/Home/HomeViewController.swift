//
//  HomeViewController.swift
//  RecycleView
//
//  Created by 宇野凌平 on 2018/08/22.
//  Copyright © 2018年 ryouheiuno. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class HomeViewController: UIViewController {
    private var numberImageView: HomeView!
    private let disposeBag = DisposeBag()
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
}

extension HomeViewController {
    private func configure() {
        configureScrollView()
        configureNumber()
    }

    private func configureNumber() {
        let numberType: [NumberType] = [.one, .two, .three]

        numberType
            .enumerated()
            .forEach { index, number in
                numberImageView = HomeView.create(numberType: number)
                numberImageView.frame.size = HomeView.size()
                numberImageView.frame.origin.x = HomeView.size().width * CGFloat(index)

                scrollView.addSubview(numberImageView)
        }
    }

    private func configureScrollView() {
        scrollView.contentSize = CGSize(
            width: HomeView.size().width * CGFloat(NumberType.numberOfPages),
            height: HomeView.size().height
        )
    }
}


