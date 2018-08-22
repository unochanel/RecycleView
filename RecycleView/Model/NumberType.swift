//
//  NumberType.swift
//  RecycleView
//
//  Created by 宇野凌平 on 2018/08/22.
//  Copyright © 2018年 ryouheiuno. All rights reserved.
//

import Foundation

enum NumberType: Int {
    case one
    case two
    case three
    
    func image() -> UIImage {
        switch self {
        case .one:
            return R.image.one
        case .two:
            return R.image.two
        case .three:
            return R.image.three
        }
    }
}
