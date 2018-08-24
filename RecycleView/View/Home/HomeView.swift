//
//  HomeView.swift
//  RecycleView
//
//  Created by 宇野凌平 on 2018/08/22.
//  Copyright © 2018年 ryouheiuno. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class HomeView: UIView {
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var presentButton: UIButton!

    static func size() -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width, height: 395)
    }
    
    static func create(numberType: NumberType) -> HomeView{
        let view = R.nib.homeView.firstView(owner: nil)!
        view.frame.size = size()
        view.configureView(numberType: numberType)
        return view
    }
    
    private func configureView(numberType: NumberType) {
        image.image = numberType.image()
    }
}
