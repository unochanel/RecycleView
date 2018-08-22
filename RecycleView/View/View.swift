//
//  View.swift
//  RecycleView
//
//  Created by 宇野凌平 on 2018/08/22.
//  Copyright © 2018年 ryouheiuno. All rights reserved.
//

import RxSwift
import RxCocoa

class View: UIView {
    @IBOutlet weak var image: UIImageView!
    
    static func size() -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width, height: 395)
    }
    
    static func create(numberType: NumberType) -> NumberImageView{
        let view = R.nib.numberImageView.firstView(owner: nil)!
        view.frame.size = size()
        view.configureView(numberType: numberType)
        return view
    }
    
    private func configureView(numberType: NumberType) {
        image.image = numberType.image
    }
}
